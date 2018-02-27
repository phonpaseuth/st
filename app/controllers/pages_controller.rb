class PagesController < ApplicationController
	before_action :require_user, only: [:home]

	def home
		@posts = Post.order(created_at: :desc).all
	end
	
	def reset_password; end;

	def show
		@post = Post.find(params[:id])
	end

	def new
		@new_post = Post.new
	end

	def create 
 		 @new_post = Post.new(post_params) 
  		if @new_post.save
   			redirect_to '/' 
  		else 
    		render 'new'
  		end 
	end

	private 
  		def post_params 
    		params.require(:post).permit(:title, :description, :category).merge(user_id: current_user.id)
  	end

end