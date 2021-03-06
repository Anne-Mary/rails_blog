class PostsController < ApplicationController
	before_action :set_upload, only: [:show, :edit, :update, :destroy]
	def index
		@posts = Post.all
	end

	def show 
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.update(post_params)
		redirect_to @post
	end

	def new
		@post = Post.new
	end


	def create
		@post = Post.create(post_params)
		@post.user_id = current_user.id
		@post.date = Time.now
		@post.save 

		redirect_to @post  
	end 

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end

	private 
	def post_params
		params.require(:post).permit(:title, :body)
	end
    # Use callbacks to share common setup or constraints between actions.
    def set_upload
      @post = Post.find(params[:id])
    end

end
