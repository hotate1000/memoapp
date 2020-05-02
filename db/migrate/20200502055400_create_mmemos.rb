class CreateMmemos < ActiveRecord::Migration[5.2]
  def change
    create_table :mmemos do |t|

      t.timestamps
    end
  end
end
