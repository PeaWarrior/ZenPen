class User < ApplicationRecord
    has_secure_password
    has_many :posts, dependent: :destroy
    has_many :user_audios, dependent: :destroy
    has_many :audios, through: :user_audios
    validates :username, presence: true, uniqueness: {case_sensitive: false}
end