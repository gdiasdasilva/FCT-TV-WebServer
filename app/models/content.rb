class Content < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  has_many :marked_contents
  has_many :marked_by,  class_name: 'User', through: :marked_contents

  acts_as_taggable_on :tags
  acts_as_votable

  validates :category_id, :presence => true
  validates :title, :presence => true
  validates :description, :presence => true

  mount_uploader :image, ImageUploader

  nilify_blanks :only => [:video]

  def self.search(query)
    where("title LIKE ? OR description LIKE ?", "%#{query}%", "%#{query}%")
  end

  def self.most_popular
    self.order("cached_votes_score DESC")
  end
end
