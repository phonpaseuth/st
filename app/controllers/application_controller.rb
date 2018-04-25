class ApplicationController < ActionController::Base

  	protect_from_forgery with: :exception

  	helper_method :current_user

  	# Setting time zone
  	config.time_zone = 'Eastern Time (US & Canada)'

	def current_user 
	  	@current_user ||= User.find(session[:user_id]) if session[:user_id] 
	end

	def require_user 
		redirect_to '/login' unless current_user 
	end

end