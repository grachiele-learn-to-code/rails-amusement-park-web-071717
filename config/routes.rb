Rails.application.routes.draw do
  resources :users, :attractions, :rides
  get '/signin', to: "sessions#new"
  post '/signin', to: "sessions#create"
  root to: 'home#welcome'
end
