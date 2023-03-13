Rails.application.routes.draw do
  get 'players/index'
  get 'players/show'
  get 'players/new'
  get 'players/create'
  get 'players/edit'
  get 'players/update'
  get 'players/destroy'
  root to: "pages#home"
  resources :bookings do
    resources :players
  end
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
