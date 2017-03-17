class User < ApplicationRecord
  has_secure_password

  has_many :active_relationships, class_name: "Relationship",
  									foreign_key: "follower_id",
  									dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship",
  								   foreign_key: "followed_id",
  								   dependent: :destroy

  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  has_many :posts#,    dependent: :destroy
  has_many :comments, as: :commentable#, dependent: :destroy

  has_many :likes #, dependent: :destroy

  #A users activity shouldn't leave because they leave the platform
  #handle in a better way
  #Add a db column to make users active or inactive so on destroy
  #A user becomes inactive

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  # validates :username,  :presence => true, :uniqueness => true
  validates :email,     :presence => true, :uniqueness => true, :format => /@/
  validates_length_of   :password, :in => 4..20, :on => :create

  mount_uploader :image, ImageUploader

    #Follows a user
    def follow(other_user)
    	following << other_user
    end

   	#Unfollowing a user
   	def unfollow(other_user)
   		following.delete(other_user)
   	end

   	def following?(other_user)
   		following.include?(other_user)
   	end

    def likes?(post)
      post.likes.where(user_id: id).any?
    end

end
