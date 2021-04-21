Rails.application.routes.draw do
  post '/callback' => 'linebot#callback'
  root 'bots#index'
  resources :bots
end