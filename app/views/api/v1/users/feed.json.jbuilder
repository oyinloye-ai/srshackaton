json.array! @posts do |post|
	json.(post, :id,:content,:betslip,:created_at)

	json.comments post.comments do |comment|
		json.(comment, :id, :body,:created_at) 

		json.user comment.user, :id,:firstname,:email,:image
	end

	json.commentscount post.comments.count

	json.like post.likes.count

	json.user post.user, :id,:firstname,:email,:image
	
end 