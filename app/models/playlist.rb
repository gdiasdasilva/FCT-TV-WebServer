class Playlist < ActiveRecord::Base
  has_many :playlist_items
  has_many :contents, through: :playlist_items
end
