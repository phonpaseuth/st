class CategoriesController < ApplicationController
	before_action :require_user
	
	def home
		@categories = Category.all
	end

	def show_category
		@user = @current_user
		@category = Category.find(params[:id])
		@posts = @category.posts.order(updated_at: :desc).paginate(:page => params[:page], :per_page => 5)
	end
end