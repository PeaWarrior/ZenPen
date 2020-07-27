class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags

  validates_presence_of :title, on: :create, message: "can't be blank"
  validates_presence_of :content, on: :create, message: "can't be blank"
end
