class TodosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_new_todo, only: :create

  def index
    render :json => {
      user: current_user,
      user_sign_in: user_signed_in?,
    }
  end

  private
  def set_todo
    @todo = Todo.find_by(id: params[:id])
  end

  def set_new_todo
    @pop = Pop.new(title: params[:title], user_id: parmas[:user_id])
  end

  def create_params
    params.permit(:id, :title, :description, :deadline)
  end

  def create_params
    params.permit(:title, :description, :deadline)
  end
end
