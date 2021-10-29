class CreateInterestLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :interest_levels do |t|
      t.integer :level
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
