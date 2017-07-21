class CommentsController < ApplicationController
	def create
	@post = Post.find(params[:post_id])
	@comment = @Post.comments.create(params[:comment].permit(:name))
end
