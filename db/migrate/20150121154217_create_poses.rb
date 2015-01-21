class CreatePoses < ActiveRecord::Migration
  def change
    create_table :poses do |t|
      t.string :name
      t.text :description
      t.integer :difficulty
      t.string :equipment_needed
      t.string :tips
      t.string :good_for

      t.timestamps
    end
  end
end
