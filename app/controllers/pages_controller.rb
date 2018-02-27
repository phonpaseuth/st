class PagesController < ApplicationController
	before_action :require_user, only: [:home]

	def home
	end
	
	def reset_password; end;
end