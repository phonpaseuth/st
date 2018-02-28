Rails.application.routes.draw do

  # Display all posts
  get '/home' => 'pages#home'
  root 'pages#home'
  # Show specific post
  get '/post/:id' => 'pages#show'
   # New post
  get '/createpost' => 'pages#new'
  post '/createpost' => 'pages#create'
  # Edit post
  get '/post/:id/edit' => 'pages#edit', as: :edit_post
  post '/post/:id' => 'pages#update', as: :update_post


  # Sign up pages
  get '/signup'  => 'users#new'
  resources :users
  # User page
  get '/user' => 'users#info'
  # Show all posts by a specific user
  get '/posts/user/:id' => 'users#allposts'
  

  # Login pages
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end