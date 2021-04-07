Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    registrations: 'api/auth/registrations'
  }

  # resources :todos do
  #   collection do
  #   end
  # end
end
