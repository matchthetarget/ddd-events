class AddEventReferenceToInterestLevels < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :interest_levels, :events
    add_index :interest_levels, :event_id
    change_column_null :interest_levels, :event_id, false
  end
end
