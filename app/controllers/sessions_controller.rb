class SessionsController < ApplicationController

	def new
	end

	# Login
	def create
		@user = User.find_by_email(params[:session][:email])
		if @user && @user.authenticate(params[:session][:password])
			session[:user_id] = @user.id
			flash[:notice] = "Welcome back, " + @user.first_name.to_str + "!"
			redirect_to '/'
		else
			flash[:notice] = "Username and password cannot be found. Please try again."
			render 'new'
		end 
	end

	# Logout
	def destroy 
  		session[:user_id] = nil
  		flash[:notice] = "Successfully logged out."
  		redirect_to '/login' 
	end

end
