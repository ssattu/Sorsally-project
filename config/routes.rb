Rails.application.routes.draw do
  root "sorsallys#index"
  devise_for :users, controllers: {sessions: "users/sessions" , registrations: "users/registrations"}
  get 'products', to: 'products#index'
  get 'products/:id/add_image', to: "products#add_image", as: "add_image"
  delete 'products/:id', to: "products#destroy", as: "delete_product"
  delete 'users/:id', to: "users#destroy", as: "delete_user"
  get 'users/:id', to: "users#activate", as: "activate_user"
  get 'categories/show'
  post 'products/:id/query', to: 'products#query', as: 'query'

  resources :sorsallys
  resources :galleries
  resources :about_us
  resources :products
  resources :users
  resources :colors
  resources :categories
  
  

end
