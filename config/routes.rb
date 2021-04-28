Rails.application.routes.draw do
    
    root to: 'tasks#index'
    resources :tasks
  
  #ログイン機能のルート 
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
   
   #ユーザ機能のルート 
    get 'signup', to: 'users#new' 
    resources :users, only: [:new, :create]
 
end
