json.array! @user do |user|
	
	json.(user, :id,:firstname,:lastname,:email,:wins, :losses, :betsplaced, :image, :points)

	json.followers user.followers.count
end