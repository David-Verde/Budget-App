Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :categories do
    resources :payments, only: [:index, :new, :create, :edit, :update, :show, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "categories#index"




end
