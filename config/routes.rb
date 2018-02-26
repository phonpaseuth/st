Rails.application.routes.draw do
  get 'home' => 'pages#home'
  root 'pages#home'

  # Sign up pages
  get 'signup'  => 'users#new' 
  resources :user
  
  # Login pages
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'


end
