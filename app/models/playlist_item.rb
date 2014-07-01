class PlaylistItem < ActiveRecord::Base
  belongs_to :content
  belongs_to :playlist
  acts_as_list
end
