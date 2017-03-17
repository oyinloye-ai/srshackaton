class AuthenticateUser
	prepend SimpleCommand

	def initialize(username,email,password)
		@username = username
		@email = email
		@password = password
	end

	def call
		JsonWebToken.encode(user_id: user.id) if user
	end

	private

	attr_accessor :username, :email , :password

	def user
		if username
			user = User.find_by_username(username)
			return user if user && user.authenticate(password)
		else 
			user = User.find_by_email(email)
			return user if user && user.authenticate(password)
		end
		

		errors.add :user_authentication, 'invalid credentials'
		nil
	end

end
