class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.string :deadline
      t.string :time    ,null: false
      t.string :comment ,null: false
      t.timestamps
    end
  end
end
