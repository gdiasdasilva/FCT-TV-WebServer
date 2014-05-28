class Content < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  acts_as_taggable_on :tags
  validates :category_id, :presence => true
  validates :title, :presence => true
  validates :description, :presence => true

  def self.search(search)
    if search
      where 'description LIKE ?', "%#{search}%"
    end
  end
end
