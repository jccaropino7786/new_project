Rails.application.routes.draw do
  resources :boards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'game/index'
  post 'game/play'
  root 'game#index'


end
