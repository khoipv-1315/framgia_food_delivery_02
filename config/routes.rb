Rails.application.routes.draw do
  get "contact" => "customers/static_pages#contact"
  get "error" => "customers/static_pages#error" 
end
