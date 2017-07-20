class PostsController < ApplicationController
	def index
		@posts = Post.all.order("title")
	end

	def new
		
	end

	def create
		@post = Post.create(post_params)
		# @post.user_id = current_user.id
		# @post.date = Time.now
		@post.save 

		redirect_to @post  
	end 

	def show 
		@post = Post.find(params[:id])
	end

	private 
	def post_params
		params.require(:post).permit(:title, :body)
	end

end
