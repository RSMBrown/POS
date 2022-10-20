Rails.application.routes.draw do
  devise_for :users

  get 'home/index'

  root to: "home#index"

  resources :products 

  resources :returns, only: [:new, :create, :show, :index]

  resources :listings, only: [:show, :edit, :update]

  resources :purchases do 
    member do 
      get :total 
    end 
  end 

  get "/new_search", to: "purchases#new_search"
  get "/search_date", to: "purchases#search_date"

end
