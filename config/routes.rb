Rails.application.routes.draw do
  devise_for :users

  get 'home/index'

  root to: "home#index"

  resources :products
  resources :listings
  resources :purchases 
end
