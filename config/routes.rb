Rails.application.routes.draw do
  get '/cart' => 'carts#show' 
  resources :carts, only: [:destroy], as: "carts"
  post '/update_all' => 'lineitems#update_all'
  resources :lineitems, only: [:new, :create, :destroy]
  resources :products
  resources :orders, only: [:index, :new, :destroy]
  devise_for :admins
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
