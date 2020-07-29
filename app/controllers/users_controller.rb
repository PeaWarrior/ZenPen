class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update, :destroy]

  skip_before_action :authorized, only: [:new, :create]
  
  def new
    @user = User.new
  end

  def create
    user_params[:username].downcase!
    @user = User.create(user_params)
    if @user.valid?
      login_user(@user)
      redirect_to "/"
    else
      flash[:errors] = @user.errors
      redirect_to signup_path
    end
  end

  def edit
  end

  def update
    @user.assign_attributes(user_params)
    if @user.save
      flash[:notice] = "Username and/or password updated."
      redirect_to "/"
    else
      flash[:errors] = {}
      @user.errors.messages.each do |key, value|
        flash[:errors][key] = value[0]
      end
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    session[:user_id] = nil
    @user.destroy
    redirect_to '/'
  end

  private 

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
