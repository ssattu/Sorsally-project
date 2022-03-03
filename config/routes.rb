Rails.application.routes.draw do
  
  get 'categories/show'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sorsallys#index"
  resources :sorsallys
  resources :galleries
  resources :about_us
  resources :products
  resources :categories

  get 'products', to: 'products#index'
end
