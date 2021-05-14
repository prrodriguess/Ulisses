class RemoveTableSmokingGoals < ActiveRecord::Migration[6.1]
  def change
    drop_table :smoking_goals
  end
end
