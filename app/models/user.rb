class User < ApplicationRecord
    has_secure_password
    has_many :posts, dependent: :destroy
    has_many :user_audios, dependent: :destroy
    has_many :audios, through: :user_audios
    validates :username, presence: true, uniqueness: {case_sensitive: false}

    def add_meditation_date
        if !self.meditation_dates
            self.meditation_dates = "#{Date.today},"
            self.save
        else
            if !self.meditation_dates.split(',').include?(Date.today.to_s)
                self.meditation_dates += "#{Date.today},"
                self.save
            end
        end
    end
end