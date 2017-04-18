class Employment < ApplicationRecord
  belongs_to :user

  mount_uploader :image, ImageUploader

  def employment_score
		score = 0
		if average_income != nil
			if average_income < 500 
				score = 50
			elsif average_income < 1000
				score = 80
			elsif average_income < 20000
				score = 100
			elsif average_income < 300
				score = 150
			elsif average_income < 50000
				score = 200
			elsif average_income < 80000
				score = 300
			elsif average_income < 100000
				score = 500
			else
				score = 100
			end
		else
			score = 20
		end

		score = (score * 20/100000) * 800/100
	end
end
