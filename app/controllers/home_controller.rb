class HomeController < ApplicationController
  
  

  include ApplicationHelper

  def index
    #@response = pinnacle_sport_odds()
  end

  def about
  end

  def contact
  end

  def member
    @users = User.all.order('created_at DESC')
  end

  def destroy
    if @user.destroy
      redirect_to users_path
      flash[:success] = "Organization was deleted"
    else
      flash[:error] = "Organization was not deleted"  
    end
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
