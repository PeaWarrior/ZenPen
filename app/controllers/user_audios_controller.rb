class UserAudiosController < ApplicationController

  def create
    UserAudio.create(user_id: params[:user_id], audio_id: params[:audio_id]) if !UserAudio.find_by(user_id: params[:user_id], audio_id: params[:audio_id])

    redirect_to meditate_path
  end

  def destroy
    user_audio = UserAudio.find(params[:id])

    user_audio.destroy
    redirect_back(fallback_location: '/meditate')
  end
end
