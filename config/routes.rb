Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :tasks
    root to: 'tasks#index'
  
  #ログイン機能のルート 
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
   
   #ユーザ機能のルート 
    get 'signup', to: 'users#new' 
    resources :users, only: [:index, :show, :create]
end
