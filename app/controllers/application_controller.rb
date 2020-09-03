class ApplicationController < ActionController::Base

  before_action :set_user

  def set_user
    @user = User.find_by(id: session[:user_id])
    if @user && @user.administrator == 1
        @administrator_user = User.find_by(id: session[:user_id])
    elsif @user && @user.administrator == 0
        @current_user = User.find_by(id: session[:user_id])
    end
  end

  
end
