class RelationshipsController < ApplicationController
	#this creates a relationship in the database table between the logged
	#in user and the other user
	def create
		@user = User.find(params[:followed_id])
		current_user.follow(@user)
		respond_to do |format|
			format.html {redirects_to @user}
			format.js
		end
	end

	#this deletes a relationship in the database table between the logged
	#in user and the other user
	def destroy
		@user = Relationship.find(params[:id]).followed
		current_user.unfollow(@user)
		respond_to do |format|
			format.html {redirects_to @user}
			format.js
		end
	end

	private

  def user_signed_in?
    unless session[:user_id]
      flash[:notice] = "Please log in!"
      redirect_to login_path
      return false
    else
      return true
    end
  end
end
