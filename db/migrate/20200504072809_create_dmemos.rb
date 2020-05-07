class CreateDmemos < ActiveRecord::Migration[5.2]
  def change
    create_table :dmemos do |t|
      t.string :deadline ,null: false
      t.string :comment  ,null: false
      t.timestamps
    end
  end
end
