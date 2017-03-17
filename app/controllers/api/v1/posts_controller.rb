class Api::V1::PostsController < Api::V1::BaseController
	before_action :set_post, only: [:show, :destroy, :update]

	def index
		@posts = Post.all  #s.includes(:user).as_json(include: { user: { only: [:email,:image]}})
		render :index
		#respond_with @post
	end

	def new
		@post = Post.new
	end

	def create
		@post = current_user.posts.create(post_params)
		#respond_with :api, :v1, @post
		render :post
	end

	def show
		render :post
	end


	def update
		@post.update(post_params)
		#respond_with @post
		render :post
	end

	def destroy
		#respond_with @post.destroy
		render :post
	end


	def repost
		@post = Post.find(params[:id])
		current_user.posts.create(repost_id: @post.id)
		#respond_with @post
		render :post
	end

	def show
		@post = @post.comments.all.includes(:user).as_json(include: { user: { only: [:email,:image]}})
		respond_with @post
	end
		 

	def update
		@post.update(post_params)
		respond_with @post
	end

	def destroy
		respond_with @post.destroy
	end

	private

	def set_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:content)
	end
end
