class AudiosController < ApplicationController
  before_action :find_audio, only: [:show]

  def index
    current_user.add_meditation_date
    @audio = Audio.random_meditation
  end

  def show
  end

  private

  def find_audio
    @audio = Audio.find(params[:id])
  end

end
