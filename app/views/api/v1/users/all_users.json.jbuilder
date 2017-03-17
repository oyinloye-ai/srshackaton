json.array! @users do |user|
	json.(user, :id, :username, :firstname, :lastname, :email, :phonenumber, :country, :dateofbirth,:wins,:losses, :betsplaced, :points)
end