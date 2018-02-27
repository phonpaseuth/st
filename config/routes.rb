Rails.application.routes.draw do
  get 'home' => 'pages#home'
  root 'pages#home'

  # Sign up pages
  get 'signup'  => 'users#new'
  resources :users
  # User page
  get 'user' => 'users#info'
  
  # Login pages
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # Reset pages
  get 'reset_password' => 'pages#reset_password'

end