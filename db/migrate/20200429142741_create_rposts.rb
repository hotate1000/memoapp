class CreateRposts < ActiveRecord::Migration[5.2]
  def change
    create_table :rposts do |t|
      t.string :comment
      t.timestamps
    end
  end
end
