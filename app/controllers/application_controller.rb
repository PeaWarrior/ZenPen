class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :authorized
  
  def current_user
    User.find_by(id: session[:user_id]) 
  end

  def logged_in?
    !!current_user 
  end

  def authorized
    unless logged_in?
      flash[:notice] = "You must be logged in to see this page"
      
      redirect_to '/'
    end
  end

  def login_user(user)
    session[:user_id] = user.id
  end
end
