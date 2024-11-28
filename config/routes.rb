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
    resources :rides, only: [:index, :show, :create, :new, :edit, :destroy, :update]
  end

  # Rotas diretas para rides
  resources :rides, only: [:index, :show, :create, :new, :edit, :destroy, :update]

  resources :bicycles
  resources :components
  resources :bicycle_components
end
