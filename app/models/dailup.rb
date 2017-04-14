class Dailup < ApplicationRecord
	belongs_to :user

	def call_score
		score = 0
		if duration == 0
			score = 20
		elsif duration < 60
			score = 40
		elsif duration < 120
			score = 60
		else
			score = 100
		end			
		score
	end
end
