class AddUserIdToDmemos < ActiveRecord::Migration[5.2]
  def change
    add_column :dmemos, :user_id, :integer
  end
end
