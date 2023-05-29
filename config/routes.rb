Rails.application.routes.draw do
  resources :splash, only: [:index]
  root 'splash#index'
  devise_for :users
  resources :categories, only: [:index]
end
