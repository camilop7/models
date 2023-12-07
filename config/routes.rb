Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :coffees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "reviews#index"
  # root "articles#index"
end
