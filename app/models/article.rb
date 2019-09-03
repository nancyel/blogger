class Article < ApplicationRecord
  validates_presence_of :title, :body
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

  def tag_list
    tags.map(&:name).join(', ')
  end
end
