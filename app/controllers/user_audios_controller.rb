class UserAudiosController < ApplicationController

  def create
    if !UserAudio.find_by(user_id: params[:user_id], audio_id: params[:audio_id])
      user_audio = UserAudio.create(user_id: params[:user_id], audio_id: params[:audio_id]) 

      redirect_to audio_path(user_audio.audio)
    end
  end

  def destroy
    user_audio = UserAudio.find(params[:id])

    user_audio.destroy
    redirect_back(fallback_location: meditate_path)
  end
end
