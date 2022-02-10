Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/new'
  get 'users/create'
    root to: 'tasks#index'
    resources :tasks
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    get 'signup', to: 'users#new'#/signup
    resources :users, only: [:create]
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
