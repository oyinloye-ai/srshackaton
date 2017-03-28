class User < ApplicationRecord
  has_secure_password

  has_many :savings
  has_many :employments
  has_many :guarantors
  has_many :institutions
  has_many :expenditures
  #A users activity shouldn't leave because they leave the platform
  #handle in a better way
  #Add a db column to make users active or inactive so on destroy
  #A user becomes inactive

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  # validates :username,  :presence => true, :uniqueness => true
  validates :email,     :presence => true, :uniqueness => true, :format => /@/
  validates_length_of   :password, :in => 4..20, :on => :create

  mount_uploader :image, ImageUploader

  def completed_score
    num_of_null = 0
    params_count.each do |key|
    if @current_user[key] != nil
    num_null  +=1
    end
  end

    num_null/params_count * BioScoreWeight.completed

    end


  def bio_verified_score
    num_null =0
    if BioScoreWeight.verified.nil?
      num_null =1
    end
    num_null
  end

  def bio_data_score
    completed_score() + bio_verified_score()
  end
end


module ScoreCalculator
  def self.profile_score(user)
    klass = "ScoreCalculator::#{user.shit.classify}".constantize
    klass.new(user).call
  end

  class Base
    def initialize(user)
      @user = user
    end
  end

end