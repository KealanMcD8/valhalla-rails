Rails.application.routes.draw do
  get 'workouts/new'
  get 'workouts/create'
  get 'home/index'
  root 'home#index'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  # delete 'logout', to: 'sessions#destroy'
  get 'logout', to: 'sessions#destroy'
  resources :users do
    resource :progress, only: [:show, :edit, :update]
    resources :workouts
  end
  resources :progresses do
    resources :workouts, only: [:new, :create]
  end
  # Rails.application.routes.draw do
  #   resources :exercises, only: [:new, :create, :destroy, :index]
  # end
  resources :exercises
  resources :equipments
  resources :muscle_groups


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
