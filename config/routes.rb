Rails.application.routes.draw do
  root "sorsallys#index"

  devise_for :users, controllers: {sessions: "users/sessions" , registrations: "users/registrations"}
  resources :sorsallys
  resources :galleries
  resources :about_us
  get 'products', to: 'products#index'
  get 'products/:id/add_image', to: "products#add_image", as: "add_image"
  delete 'products/:id', to: "products#destroy", as: "delete_product"
  resources :products
  get 'users/:id', to: "users#activate", as: "activate_user"
  resources :users
  get 'categories/show'
  resources :categories
  
  

end
