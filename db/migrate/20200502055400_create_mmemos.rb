class CreateMmemos < ActiveRecord::Migration[5.2]
  def change
    create_table :mmemos do |t|
      t.string :deadline ,null: false
      t.string :comment  ,null: false
      t.timestamps
    end
  end
end
