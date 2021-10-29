class AddUserReferenceToAttendances < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :attendances, :users
    add_index :attendances, :user_id
    change_column_null :attendances, :user_id, false
  end
end
