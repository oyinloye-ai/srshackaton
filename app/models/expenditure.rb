class Expenditure < ApplicationRecord
  belongs_to :user

  mount_uploader :image, ImageUploader

  def expenditure_score
		score = 0
		if amount < 50 
			score = 50
		elsif amount < 100
			score = 80
		elsif amount < 200
			score = 100
		elsif amount < 300
			score = 150
		elsif amount < 200
			score = 200
		elsif amount < 500
			score = 300
		elsif amount < 1000
			score = 500
		else
			score = 100
		end			
		score = (score * 5/500) * 800/100
	end
end
