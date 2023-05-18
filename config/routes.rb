Rails.application.routes.draw do
  get 'cars/index'
  get 'cars/new'
  post 'cars/create'
  get 'cars/show'
  devise_for :users
  resources :users
  resources :cars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "cars#index" 
end
