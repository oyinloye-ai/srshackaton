class Employment < ApplicationRecord
  belongs_to :user

  mount_uploader :image, ImageUploader

  def employment_score
		score = 0
		if amount < 500 
			score = 50
		elsif amount < 1000
			score = 80
		elsif amount < 20000
			score = 100
		elsif amount < 300
			score = 150
		elsif amount < 50000
			score = 200
		elsif amount < 80000
			score = 300
		elsif amount < 100000
			score = 500
		else
			score = 100
		end			
		score = (score * 20/100000) * 800/100
	end
end
