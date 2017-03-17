class Api::V1::LikesController < Api::V1::BaseController

	before_action :set_post

	def create
		@post.likes.where(user_id: current_user.id).first_or_create
		respond_with @post
	end

	def destroy
		@post.likes.where(user_id: current_user.id).destroy_all
		respond_with @post
	end

	def set_post
		@post = Post.find(params[:post_id])
	end 
end
