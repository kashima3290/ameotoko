Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    registrations: 'auth/registrations'
  }
  post '/callback' => 'linebot#callback'
  root 'bots#index'
  resources :bots
  resources :weathers, only:[:index]
  resources :line_configs, only: [:index]
end