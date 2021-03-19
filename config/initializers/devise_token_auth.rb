# frozen_string_literal: true

DeviseTokenAuth.setup do |config|
  config.change_headers_on_each_request = false
  config.token_lifespan = 2.weeks
  config.headers_names = {:'access-token' => 'access-token',
                        :'client' => 'client',
                        :'expiry' => 'expiry',
                        :'uid' => 'uid',
                        :'token-type' => 'token-type' }

  # config.max_number_of_devices = 10
  # config.batch_request_buffer_throttle = 5.seconds
  # redirect successful authentications to '/omniauth/github/callback'
  # config.omniauth_prefix = "/omniauth".
  # config.check_current_password_before_update = :attributes
  # config.default_callbacks = true

  # config.enable_standard_devise_support = false
  # config.send_confirmation_email = true
end
