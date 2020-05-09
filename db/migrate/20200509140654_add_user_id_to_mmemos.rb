class AddUserIdToMmemos < ActiveRecord::Migration[5.2]
  def change
    add_column :mmemos, :user_id, :integer
  end
end
