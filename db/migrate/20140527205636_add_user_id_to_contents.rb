class AddUserIdToContents < ActiveRecord::Migration
  def change
    add_column :contents, :user_id, :string
  end
end
