class Content < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  acts_as_taggable_on :tags
  acts_as_votable
  validates :category_id, :presence => true
  validates :title, :presence => true
  validates :description, :presence => true

  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      where 'description LIKE ?', "%#{search}%"
    end
  end

  def self.most_popular
    self.order("cached_votes_score DESC")
  end
end
