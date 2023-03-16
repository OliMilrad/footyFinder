Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :players do
    resources :bookings, except: :index
  collection do
    get :myplayers
  end
  end
  resources :bookings, only: :index

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
