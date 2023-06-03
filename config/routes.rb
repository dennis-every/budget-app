Rails.application.routes.draw do
  resources :splash, only: [:index]
  root 'splash#index'
  devise_for :users
  resources :categories, only: [:index, :new, :create, :show] do
    resources :expenses, only: [:new, :create]
  end
  get 'menu', to: 'menu#index', as: 'menu'
end
