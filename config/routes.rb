Rails.application.routes.draw do
  get 'errors/internal_server_error'
  # get 'errors/not_found'
  # get 'users_rides/new'
  match '/404', via: :all, to: 'errors#not_found'
  match '/500', via: :all, to: 'errors#internal_server_error'
  # get 'users_rides/create'
  # get 'users_rides/edit'
  # get 'users_rides/update'
  # get 'users_rides/destroy'
  devise_for :users

  # raise ActionController::RoutingError.new('Not Found')
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # resources :users  # do
  #   resources :rides, only: [:create, :new, :edit, :destroy, :update]
  #  end


  resources :rides, only: [:create, :new, :edit, :destroy, :update]  do
    resources :users_rides, only: [:new]
  end

  resources :users_rides, only: [:index, :create, :edit, :update, :destroy]

  resources :components, only: [:show, :create, :new, :edit, :destroy, :update]

  resources :bicycle_components
  resources :rides, only: [:show, :index]
  # resources :warranties
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/bicycle_rack", to: "bicycles#bicycle_rack", as: :bicycle_rack
  get "/new_bicycle_code", to: "bicycles#new_code", as: :new_code
  get "/new_bicycle_validation", to: "bicycles#new_code_validation", as: :new_code_validation
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
  root to: "pages#home"
  end

  # Defines the root path route ("/")
  # root "posts#index
