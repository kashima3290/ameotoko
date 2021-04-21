Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  post '/callback' => 'linebot#callback'
  root 'bots#index'
  resources :bots
end