class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.string :video
      t.date :limit_date
      t.string :event_site
      t.datetime :event_datetime

      t.timestamps
    end
  end
end
