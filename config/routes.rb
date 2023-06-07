Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  get '/*path' => 'home#index'

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
    resources :workouts
  end

  # Rails.application.routes.draw do
  # if Rails.env.development?
  #   mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  # end
  post "/graphql", to: "graphql#execute"
  #   resources :exercises, only: [:new, :create, :destroy, :index]
  # end
  resources :exercises
  resources :equipments
  resources :muscle_groups
  # get '/*path' => 'home#index'
  # get '*path', to: 'home#index'
  # get '*path', to: "application#fallback_index_html", constraints: ->(request) do
  #   !request.xhr? && request.format.html?
  # end

  # get '/app', to: 'react#app'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
