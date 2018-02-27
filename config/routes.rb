Rails.application.routes.draw do
  # Home page
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
  # New post
  get 'createpost' => 'pages#new'
  post 'createpost' => 'pages#create'

end