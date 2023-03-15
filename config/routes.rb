Rails.application.routes.draw do
  devise_for :users
  root to: "players#index"
  resources :players do
    resources :bookings, except: :index
  end
  resources :bookings, only: :index

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
