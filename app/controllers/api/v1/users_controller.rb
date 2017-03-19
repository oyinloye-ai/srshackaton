class Api::V1::UsersController < Api::V1::BaseController
	skip_before_action :authenticate_request, only: [:create]
	before_action :set_user, only: [:show, :update, :destroy]
	def index
		@users = User.all
		render :all_users
	end

	def create
		@user = User.create(user_params)
		respond_with :api, :v1, @user
	end

	def show
		@credit = 1
		@user
		render :single_user
	end

	def update
		@user.update(user_params)
		respond_with @user
	end

	def destroy
		respond_with @user.destroy, status: :ok
	end

	def following
	    @title = "Following"
	    @user = User.find(params[:id])
	    @users = @user.following
	    respond_with @users
  	end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers
    respond_with @users
  end


  def feed
  	@posts = Post.all.where("user_id = ? OR user_id in (?)", current_user,current_user.following.map(&:id)).order(created_at: :desc)
  	render :feed
  end

  def leaders
  	@user = User.all.order(points: :desc)
  	render :leaders
  end


	private 

	def set_user
      @user = User.find(params[:id])
    end

	def user_params
      params.require(:user).permit(:username, :firstname, :lastname, :email, :password, :password_confirmation, :country, :phonenumber, :dateofbirth, :photourl)
    end
end
