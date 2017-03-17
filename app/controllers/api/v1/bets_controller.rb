class Api::V1::BetsController < Api::V1::BaseController
	def pinnacle
		@pin = User.all
		respond_with @pin
	end
end
