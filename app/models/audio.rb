class Audio < ApplicationRecord
    has_many :user_audios, dependent: :destroy
    has_many :users, through: :user_audios

    def self.random_meditation
        self.all.sample
    end
end
