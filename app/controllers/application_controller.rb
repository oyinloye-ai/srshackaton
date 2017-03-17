class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  #require 'httparty'
  protect_from_forgery with: :null_session
  
  private
  def current_user
  	User.where(id: session[:user_id]).first
  end

 
  helper_method :current_user
end
