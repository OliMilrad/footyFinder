Rails.application.routes.draw do
  get 'bookings/show'
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/destroy'
  get 'models/show'
  get 'models/index'
  get 'models/new'
  get 'models/create'
  get 'models/edit'
  get 'models/update'
  get 'models/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
