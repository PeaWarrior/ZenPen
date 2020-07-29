class BasicsController < ApplicationController
  skip_before_action :authorized, only: [:welcome, :about]
  def welcome
  end

  def about
  end

  def set_goal
    num_days = params[:num_days].to_i
    
    if params[:category] == "write" && num_days > 0
      current_user.update(writing_goal: num_days)
    elsif params[:category] == "meditate" && num_days > 0
      current_user.update(meditation_goal: num_days)
    end
  
    redirect_to root_path
  end

end