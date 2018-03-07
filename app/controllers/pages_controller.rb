class PagesController < ApplicationController
	before_action :require_user
	
	#--------------#
  	# Post section #
  	#--------------#
	def home
		@posts = Post.order(created_at: :desc).all
	end
	
	def reset_password; end;

	def show_post
		@post = Post.find(params[:id])
		@comments = @post.comments.order(created_at: :desc)
	end

	def new_post
		@new_post = Post.new
	end

	def create_post
 		@new_post = Post.new(post_params) 
  		if @new_post.save
   			redirect_to(:action => 'show_post', :id => @new_post.id) 
  		else 
    		render 'new'
  		end 
	end

	def edit_post
		@post = Post.find(params[:id])
	end

	def update_post
		@post = Post.find(params[:id]) 
		if @post.update_attributes(post_params) 
			redirect_to(:action => 'show_post', :id => @post.id) 
		else 
			render 'edit'
		end
	end

	def destroy_post
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to '/'
	end

	#------------------#
  	# Comment sections #
  	#------------------#
	def new_comment
		@new_comment = Comment.new
	end

	def create_comment
		@new_comment = Comment.new(comment_params)
		if @new_comment.save
   			redirect_to(:action => 'show_post', :id => @new_comment.post.id) 
  		else 
    		render 'comment'
  		end 
	end

	def delete_comment
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to(:action => 'show_post', :id => @comment.post.id)
	end

	private 
  		def post_params 
    		params.require(:post).permit(:title, :description, :category).merge(user_id: current_user.id)
    	end
    	def comment_params
    		@post = Post.find(params[:id])
    		params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: @post.id)
    	end
end