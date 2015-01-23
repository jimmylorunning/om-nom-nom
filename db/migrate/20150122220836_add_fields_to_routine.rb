class AddFieldsToRoutine < ActiveRecord::Migration
  def change
    add_column :routines, :user_id, :integer
    add_column :routines, :name, :string
  end
end
