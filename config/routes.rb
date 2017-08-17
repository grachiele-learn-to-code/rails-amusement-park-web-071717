Rails.application.routes.draw do
  resources :users, :attractions, :rides
  root to: 'home#welcome'
end
