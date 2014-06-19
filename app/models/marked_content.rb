class MarkedContent < ActiveRecord::Base
  belongs_to :user
  belongs_to :content
  validates :content_id, :uniqueness => { :scope => :user_id }
end
