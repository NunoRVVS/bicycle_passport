Rails.application.routes.draw do
  get 'users_rides/new'
  get 'users_rides/create'
  get 'users_rides/edit'
  get 'users_rides/update'
  get 'users_rides/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :components
  resources :bicycle_components
  resources :insurance_policies

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :rides, only: [:index, :show, :create, :new, :edit, :destroy, :update]

  # Defines the root path route ("/")
  # root "posts#index"
end
