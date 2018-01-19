Rails.application.routes.draw do
  get     "login"    => "sessions#new"
  post    "login"    => "sessions#create"
  delete  "logout"   => "sessions#destroy"
  
  resources :users

  get "contact" => "customers/static_pages#contact"
  get "error" => "customers/static_pages#error"
  namespace :admin do
    root "dashboard#index"

    resources :users
    resources :categories
  end
end
