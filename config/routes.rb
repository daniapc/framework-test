Rails.application.routes.draw do
  devise_for :users
  resources :bancodados
  
  #get 'home/index'
  get 'home/aboutus'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'home#index'
end

