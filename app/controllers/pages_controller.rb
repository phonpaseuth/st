class PagesController < ApplicationController
	before_action :require_user
	
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

	def edit
		@post = Post.find(params[:id])
	end

	def update 
		@post = Post.find(params[:id]) 
		if @post.update_attributes(post_params) 
			redirect_to(:action => 'show', :id => @post.id) 
		else 
			render 'edit'
		end
	end

	def create 
 		 @new_post = Post.new(post_params) 
  		if @new_post.save
   			redirect_to(:action => 'show', :id => @new_post.id) 
  		else 
    		render 'new'
  		end 
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to '/'
	end

	private 
  		def post_params 
    		params.require(:post).permit(:title, :description, :category).merge(user_id: current_user.id)

  	end

end