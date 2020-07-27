class Audio < ApplicationRecord
    has_many :user_audios, dependent: :destroy
    has_many :users, through: :user_audios

end
