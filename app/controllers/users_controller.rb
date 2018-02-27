class UsersController < ApplicationController
	
  # Sign up page
	def new
		@user = User.new
	end

  # Saving info to database
	def create 
  		@user = User.new(user_params) 
  		if @user.save 
    		session[:user_id] = @user.id 
    		redirect_to '/'
  		else 
    		redirect_to '/signup' 
  		end 
	end

  # Showing account's info
  def info
  end

	private
  		def user_params
    		params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :password)
  		end
  		
end
