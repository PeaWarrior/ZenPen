class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags
  has_rich_text :content

  validates :title, presence: true

  def tag_names=(string_with_tags)
    tag_parser(string_with_tags).each do |tag_name|
      self.tags << Tag.find_or_create_by(name: tag_name.strip)
    end
  end

  def self.search(current_user, search, by = "content")
    search_factor = Regexp.new(search, "i")
    case by
    when "tag"
      current_user.posts.select {|post| post.tags.pluck(:name).include?(search)}
    when "content"
      current_user.posts.select {|post| post.content.body.to_plain_text.match?(search_factor)}
    when "title"
      current_user.posts.select {|post| post.title.match?(search_factor)}
    end
  end

  private

  def tag_parser(string_with_tags)
    string_with_tags.split(",").map {|tag_name| tag_name.split(' ')}.flatten
  end

end
