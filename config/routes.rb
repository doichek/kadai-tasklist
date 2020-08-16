Rails.application.routes.draw do
  #tasks
  root to: 'tasks#index'    
  resources :tasks
  #users
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  #sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end