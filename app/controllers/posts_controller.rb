class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = current_user.posts.new(post_params)

		if @post.save
			redirect_to home_member_path, notice: "You have successfully posted"
		else
			redirect_to posts_path, notice: "You have successfully posted"
		end
	end

	def repost
		@post = Post.find(params[:id])
		current_user.posts.create(repost_id: @post.id)
	end

	private

	def post_params
		params.require(:post).permit(:content)
	end
end
