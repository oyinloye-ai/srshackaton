class Message < ApplicationRecord
	belongs_to :user

	def call_score
		score = 0
		if amount < 10 
			score = 20
		elsif amount < 60
			score = 40
		elsif amount < 120
			score = 60
		else
			score = 100
		end			
		score
	end
end
