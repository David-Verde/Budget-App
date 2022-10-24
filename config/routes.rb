Rails.application.routes.draw do
  devise_for :users
  resources :payments
  resources :categories
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  
end
