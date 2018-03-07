Rails.application.routes.draw do

  #--------------#
  # Post section #
  #--------------#
  get '/home' => 'pages#home'
  root 'pages#home'
  # Show specific post
  get '/post/:id' => 'pages#show_post', as: :show_post
  # Create new post
  get '/create_post' => 'pages#new_post' 
  post '/create_post' => 'pages#create_post'
  # Edit post
  get '/post/:id/edit' => 'pages#edit_post', as: :edit_post
  post '/post/:id' => 'pages#update_post', as: :update_post
  # Delete post
  delete '/post/:id' => 'pages#destroy_post', as: :delete_post

  #------------------#
  # Comment sections #
  #------------------#
  post '/post/:id/create_comment' => 'pages#create_comment', as: :create_comment
  delete '/delete_comment/:id' => 'pages#delete_comment'

  #---------#
  # Sign up #
  #---------#
  # Signing up
  get '/signup'  => 'users#new' 
  resources :users
  # User's page
  get '/user' => 'users#info' 
  # Show all posts by a specific user
  get '/posts/user/:id' => 'users#allposts', as: :all_posts 
  
  #-------#
  # Login #
  #-------#
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  # Reset pages
  get '/reset_password' => 'pages#reset_password' 

end