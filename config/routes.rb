Rails.application.routes.draw do
  resources :games
  resources :works
  resources :regions
  resources :plataforms
  resources :consoles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
