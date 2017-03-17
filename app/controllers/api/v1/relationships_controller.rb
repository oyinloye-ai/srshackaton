class Api::V1::RelationshipsController < Api::V1::BaseController

	def create
		@user = User.find(params[:followed_id])
		current_user.follow(@user)
		respond_with :api, :v1, @user
		# respond_to do |format|
		# 	format.html {redirects_to @user}
		# 	format.js
		# end
	end

	#this deletes a relationship in the database table between the logged
	#in user and the other user
	def destroy
		rel = current_user.active_relationships.find_by(followed_id: params[:id])
		@user = Relationship.find(rel).followed
		current_user.unfollow(@user)
		# respond_to do |format|
		# 	format.html {redirects_to @user}
		# 	format.js
		# end
		respond_with :api, :v1, @user
	end
end
