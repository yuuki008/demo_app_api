module Api
  module Auth
    class RegistrationsController < DeviseTokenAuth::RegistrationsController
      private
      # :company( 企業名 )を追加できるようにpravateメソッドに修正を加える
      def sign_up_params
        params.permit(:name, :email, :nickname, :password, :password_confirmation)
      end

      def account_update_params
        params.permit(:name, :email, :nickname)
      end
    end
  end
end
