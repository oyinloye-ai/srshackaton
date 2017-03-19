json.extract! json.(@user, :id, :username, :firstname, :lastname, :email, :phonenumber, :country, :dateofbirth,:image)

	json.savings @user.savings do |saving|
		json.(saving, :account_number, :amount, :date)
	end

	json.employment @user.employments do |emp|
		json.(emp, :status, :start, :end, :average_income,:image)
	end

	json.guarantor @user.guarantors do |g|
		json.(g, :fullname, :business, :annual_income)
	end

	json.employment @user.employments do |emp|
		json.(emp, :status, :start, :end, :average_income)
	end

	json.expenditures @user.expenditures do |exp|
		json.(exp, :expense_type, :amount, :period)
	end

<<<<<<< HEAD
json.credit @credit
=======
	json.credit @credit
>>>>>>> 5cad0546570a6daa2c865681ec7db5fe220bc5f7
