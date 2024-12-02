Rails.application.routes.draw do
  get 'users_rides/new'
  get 'users_rides/create'
  get 'users_rides/edit'
  get 'users_rides/update'
  get 'users_rides/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users do
    resources :rides, only: [:show, :create, :new, :edit, :destroy, :update]
  end

resources :components, only: [:show, :create, :new, :edit, :destroy, :update]

  resources :bicycle_components
  # resources :insurance_policies
  # resources :warranties
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/bicycle_rack", to: "bicycles#bicycle_rack", as: :bicycle_rack
  get "/my_rides", to: "rides#my_rides", as: :my_rides
  resources :rides, only: [:index]

  resources :bicycles do
    resources :components, only: [:index]
    resources :maintenances, only: [:new, :create, :index, :update]
    resources :warranties, only: [:new, :create, :index, :update]
    resources :insurance_policies, only: [:new, :create, :index, :update]
  end

    resources :maintenances, only: [:destroy]
    resources :warranties, only: [:destroy]
    resources :insurance_policies, only: [:destroy]

  end

  # Defines the root path route ("/")
  # root "posts#index
