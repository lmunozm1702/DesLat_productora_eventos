Rails.application.routes.draw do
  resources :crews
  resources :concerts
  resources :bands
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'bands#index'
end
