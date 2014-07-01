class CreatePlaylistItems < ActiveRecord::Migration
  def change
    create_table :playlist_items do |t|
      t.integer :content_id
      t.integer :playlist_id
      t.integer :position

      t.timestamps
    end
  end
end
