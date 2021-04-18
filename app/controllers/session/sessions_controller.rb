module Session
  class SessionsController < DeviseTokenAuth::SessionsController

    def create
      super
    end

    private

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
