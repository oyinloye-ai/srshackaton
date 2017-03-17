json.array! @users do |user|
	json.(user, :id, :username, :firstname, :lastname, :email, :phonenumber, :country, :dateofbirth)

	json.savings user.savings do |saving|
		json.(saving, :account_number, :amount, :date)
	end

	json.employment user.employments do |emp|
		json.(emp, :status, :start, :end, :average_income)
	end

	json.guarantor user.guarantors do |g|
		json.(g, :fullname, :business, :annual_income)
	end
end