Rails.application.routes.draw do
  root to: "pages#home"
  resources :bookings do
    resources :players
  end
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
