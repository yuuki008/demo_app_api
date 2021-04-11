module Auth
  class RegistrationsController < DeviseTokenAuth::RegistrationsController

    def create
      super
    end

    private
    def sign_up_params
      params.permit(:name, :email, :nickname, :password, :password_confirmation)
    end

    def account_update_params
      params.permit(:name, :email, :nickname)
    end

    def render_create_success
      render json: {
        resource_data: resource_data,
        uid: @resource.uid,
        access_token: @token,
        client: @client_id,
      }
    end
  end
end
