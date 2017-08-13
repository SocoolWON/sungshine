Rails.application.routes.draw do
  resources :lineitems, only: [:new, :create, :destroy]
  resources :products
  devise_for :admins
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
