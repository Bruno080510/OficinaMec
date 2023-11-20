Rails.application.routes.draw do
  devise_for :users
  resources :cars
  resources :oficinas

  get 'home/about'
  root 'home#index'



end
