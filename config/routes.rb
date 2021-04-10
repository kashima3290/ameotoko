Rails.application.routes.draw do
  devise_for :users
  post '/callback' => 'linebot#callback'
  root 'bots#index'
  resources :bots
end