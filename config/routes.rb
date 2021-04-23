Rails.application.routes.draw do
  resources :tasks
    root to: 'tasks#index'
    
    get 'signup', to: 'users#new' 
    resources :users, only: [:index, :show, :create]
end
