json.array! @users do |user|
	json.(user, :id, :username, :firstname, :lastname, :email, :phonenumber, :country, :dateofbirth)

	json.savings user.savings do |saving|
		json.(saving, :account_number, :amount, :created_at)
	end
end