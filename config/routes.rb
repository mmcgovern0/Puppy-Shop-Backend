Rails.application.routes.draw do
  # root to: 'store#index'
  resources :cart_products
  resources :favorite_products
  resources :carts
  resources :brands
  resources :pets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/login', to: 'auth#login'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'
  resources :pets
  resources :users
  resources :products
  resources :shops
  resources :charges
  resources :store
end
