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

    def all_writing_dates
        # return in an array strings of all unique dates that the user have written
        self.posts.map { |post| post.created_at.strftime("%Y-%m-%d") }.uniq
    end

    def has_goals?
        return true if self.meditation_goal || self.writing_goal       
        return false
    end

    def meditation_dates_count
        self.meditation_dates ? self.meditation_dates.split(',').count : 0
    end

    def percent_completion(goal)
        if goal == "meditation"
            if meditation_dates_count == 0
                return 0
            else
                return ((self.meditation_dates_count.to_f / self.meditation_goal) * 100).round
            end
        elsif goal == "writing"
            if all_writing_dates.count == 0
                return 0
            else
                return ((self.all_writing_dates.count.to_f / self.writing_goal) * 100).round
            end
        end
    end
end