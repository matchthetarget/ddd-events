class AddEventReferenceToAttendances < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :attendances, :events
    add_index :attendances, :event_id
    change_column_null :attendances, :event_id, false
  end
end
