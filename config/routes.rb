Rails.application.routes.draw do
  resources :buyer_products
  resources :products
  resources :buyers
  resources :profiles
  resources :sellers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
