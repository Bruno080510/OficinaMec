Rails.application.routes.draw do
  resources :cars
  resources :oficinas

  get 'home/about'
  root 'home#index'



end
