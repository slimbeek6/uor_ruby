Rails.application.routes.draw do
  resources :chores
  resources :epxenses
  resources :roommates
  devise_for :homes

  get 'home/dashboard'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
