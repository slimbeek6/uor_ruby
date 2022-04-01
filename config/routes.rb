Rails.application.routes.draw do
  resources :epxenses
  resources :roommates
  devise_for :homes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
