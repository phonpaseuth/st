 class PagesController < ApplicationController
	before_action :require_user
	
	#--------------#
  	# Post section #
  	#--------------#
	def home
		@user = @current_user
		@posts = Post.order(updated_at: :desc).paginate(:page => params[:page], :per_page => 4)
	end
	
	def reset_password; end;

	def show_post
		@user = @current_user
		@post = Post.find(params[:id])
		@comments = Post.find(params[:id]).comments.order(created_at: :desc).paginate(:page => params[:page], :per_page => 4)
	end

	def new_post
		@user = @current_user
		@new_post = Post.new
	end

	def create_post
 		@new_post = Post.new(post_params) 
  		if @new_post.save
  			flash[:notice] = "Post created."
   			redirect_to(:action => 'show_post', :id => @new_post.id) 
  		else 
    		render 'new'
  		end 
	end

	def edit_post
		@user = @current_user
		@post = Post.find(params[:id])
	end

	def update_post
		@post = Post.find(params[:id]) 
		if @post.update_attributes(post_params)
			flash[:notice] = "Post updated."
			redirect_to(:action => 'show_post', :id => @post.id) 
		else 
			render 'edit'
		end
	end

	def destroy_post
		@post = Post.find(params[:id])
		@post.destroy
		flash[:notice] = "Post deleted."
		redirect_to '/'
	end

	#------------------#
  	# Comment sections #
  	#------------------#
	def create_comment
		@new_comment = Comment.new(comment_params)
		if @new_comment.save
			flash[:notice] = "Comment posted."
   			redirect_to(:action => 'show_post', :id => @new_comment.post.id)
  		end 
	end

	def delete_comment
		@comment = Comment.find(params[:id])
		@comment.destroy
		flash[:notice] = "Comment deleted."
		redirect_to(:action => 'show_post', :id => @comment.post.id)
	end

	private 
  		def post_params
    		params.require(:post).permit(:title, :description, :category_id).merge(user_id: current_user.id)
    	end
    	def comment_params
    		@post = Post.find(params[:id])
    		@post.touch(:updated_at)
    		params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: @post.id)
    	end
end