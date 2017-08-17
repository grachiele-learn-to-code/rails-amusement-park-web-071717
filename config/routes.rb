Rails.application.routes.draw do
  resources :users, :attractions, :rides
  get '/signin', to: "sessions#new"
  post '/signin', to: "sessions#create"
  delete '/signout', to: "sessions#destroy"
  root to: 'home#welcome'
end
