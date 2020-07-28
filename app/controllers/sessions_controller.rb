class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def create
    @user = User.find_by(username: params[:username].downcase)
    
    if @user && @user.authenticate(params[:password]) 
        login_user(@user)
        flash[:notice] = "Welcome #{@user.username}!"
        redirect_to "/"
    else
        flash[:notice] = 'Invalid username and/or password.'
        redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)

    flash[:notice] = "Logout Successful."
    redirect_to '/'
  end

end 