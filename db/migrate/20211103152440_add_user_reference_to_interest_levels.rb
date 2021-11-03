class AddUserReferenceToInterestLevels < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :interest_levels, :users
    add_index :interest_levels, :user_id
    change_column_null :interest_levels, :user_id, false
  end
end
