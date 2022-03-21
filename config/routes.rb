Rails.application.routes.draw do
  root "sorsallys#index"
  get 'users/:id', to: "users#activate", as: "activate_user"

  devise_for :users, controllers: {sessions: "users/sessions" , registrations: "users/registrations"}
  resources :sorsallys
  resources :galleries
  resources :about_us
  resources :products
  get 'users/:id', to: "users#activate", as: "activate_user"
  resources :users
  resources :categories
  
  
  get 'categories/show'
  delete 'products/:id', to: "products#destroy", as: "delete_product"
  get 'products/:id/add_image', to: "products#add_image", as: "add_image"
  get 'products', to: 'products#index'

end
