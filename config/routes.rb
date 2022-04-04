Rails.application.routes.draw do
  get 'epxenses/table', to: 'epxenses#table'
  resources :events
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
