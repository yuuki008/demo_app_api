Rails.application.routes.draw do
  root 'application#debug'

  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    registrations: 'auth/registrations',
    sessions: 'session/sessions'
  }

  resources :todos, only: :index
end
