class ChangeLevelDefaultValueInInterestLevels < ActiveRecord::Migration[6.0]
  def change
    change_column_default :interest_levels, :level, "interested"
  end
end
