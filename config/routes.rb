Rails.application.routes.draw do
  resources :users, :attractions, :rides
  get '/signin', to: "sessions#new"
  root to: 'home#welcome'
end
