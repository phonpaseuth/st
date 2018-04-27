class UsersController < ApplicationController
	before_action :require_user, only: [:allposts]

  # Sign up page
	def new
		@user = User.new
	end

  # Saving info to database
	def create 
  		@user = User.new(user_params) 
  		if @user.save 
    		session[:user_id] = @user.id 
        flash[:notice] = "Welcome to StudentsAd, " + @user.first_name.to_str + "!"
    		redirect_to '/'
  		else 
    		redirect_to '/signup' 
  		end 
	end

  # Showing account's info
  def profile
  end

  # Show all the pages own by a user
  def allposts
    @user = User.find(params[:id])
    @posts = User.find(params[:id]).posts.order(updated_at: :desc).paginate(:page => params[:page], :per_page => 5)
  end

	private
  		def user_params
    		params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :password)
  		end
  		
end
