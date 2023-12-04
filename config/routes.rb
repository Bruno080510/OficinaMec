Rails.application.routes.draw do
  resources :mecanicos
  resources :equipes
  resources :pecas
  resources :servicos
  devise_for :users
  resources :cars
  resources :oficinas

  get 'home/about'
  root 'home#index'



end
