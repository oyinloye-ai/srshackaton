require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should follow and unfollow a user" do
  	micheal = users(:micheal)
  	archer  = users(:archer)
  	assert_not micheal.following?(archer)
  	micheal.follow(archer)
  	assert micheal.following?(archer)
  	assert archer.followers.include?(micheal)
  	micheal.unfollow(archer)
  	assert_not micheal.following?(archer)
  end

end
