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

end
