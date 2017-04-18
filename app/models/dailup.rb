class Dailup < ApplicationRecord
	belongs_to :user

	def call_score
		score = 0
		if duration < 50 
			score = 50
		elsif duration < 100
			score = 80
		elsif duration < 200
			score = 100
		elsif duration < 300
			score = 120
		elsif duration < 200
			score = 140
		elsif duration < 500
			score = 180
		elsif duration < 1000
			score = 250
		else
			score = 100
		end			
		score = (score * 20/250) * 800/100
	end
end
