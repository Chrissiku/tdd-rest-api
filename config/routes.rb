Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root' home#index'
  get 'users/Authentication'
  namespace :api do
    namespace :v1 do
      # resources :users, only: :index
      resources :categories, only: %i[index create destroy]
      resources :books, only: %i[index create show update destroy]
      post 'login', to: 'authentication#create'
      post 'register', to: 'users#create'
    end
  end
end
