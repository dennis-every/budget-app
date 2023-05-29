Rails.application.routes.draw do
  resources :categories, only: [:index]
  devise_for :users
  root 'categories#index'
end
