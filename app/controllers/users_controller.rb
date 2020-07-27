class UsersController < ApplicationController

  def new
    @user = User.new
    @errors = flash[:errors]
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      login_user(@user)
      redirect_to "/"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to signup_path
    end
  end

  private 

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
