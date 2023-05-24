Rails.application.routes.draw do
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
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
