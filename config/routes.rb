Rails.application.routes.draw do
  root "customers/home#index"
  get     "login"    => "sessions#new"
  post    "login"    => "sessions#create"
  delete  "logout"   => "sessions#destroy"
  
  resources :users

  get "contact" => "customers/static_pages#contact"
  get "error" => "customers/static_pages#error"
  get "index" => "customers/home#index"
  namespace :customers do
    resources :categories, only: [:index, :show]
  end
  namespace :admin do
    root "dashboard#index"

    resources :users
    resources :categories
    resources :discounts
    resources :foods
  end
end
