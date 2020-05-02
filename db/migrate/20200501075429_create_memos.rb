class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.string :deadline
      t.string :time
      t.string :comment
      t.timestamps
    end
  end
end
