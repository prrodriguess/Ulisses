class AddWeightGoalsTitleToWeightGoals < ActiveRecord::Migration[6.1]
  def change
    add_column :weight_goals, :weight_goals_title, :string
  end
end
