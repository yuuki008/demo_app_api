class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ActionController::Cookies

  def debug
    render json: { do: "Let's start your coding!!" }
  end
end
