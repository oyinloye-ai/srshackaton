class HomeController < ApplicationController
  before_action :user_signed_in?, only: [:member]

  include ApplicationHelper

  def index
    #@response = pinnacle_sport_odds()
  end

  def about
  end

  def contact
  end

  def member
    @user = current_user
    @post = Post.new

   @posts = Post.all.where("user_id = ? OR user_id in (?)", current_user,current_user.following.map(&:id)).order(created_at: :asc)
  end


  private

  def user_signed_in?
    unless session[:user_id]
        flash[:notice] = "Please log in!"
        redirect_to login_path
        return false
    else
        return true
    end
  end



end
