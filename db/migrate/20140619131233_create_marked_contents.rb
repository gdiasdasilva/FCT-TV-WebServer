class CreateMarkedContents < ActiveRecord::Migration
  def change
    create_table :marked_contents do |t|
      t.integer :user_id
      t.integer :content_id

      t.timestamps
    end
  end
end
