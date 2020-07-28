class BasicsController < ApplicationController
  skip_before_action :authorized
  def welcome
  end

  def about
  end

end