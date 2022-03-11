Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: "users/sessions" , registrations: "users/registrations"}
  
  
  get 'categories/show'
  delete 'products/:id', to: "products#destroy", as: "delete_product"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sorsallys#index"
  resources :sorsallys
  resources :galleries
  resources :about_us
  resources :products
  resources :categories
  get 'users/:id', to: "users#activate", as: "activate_user"
  resources :users

  get 'products', to: 'products#index'
end
