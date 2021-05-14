class AddColumnToWeightGoal < ActiveRecord::Migration[6.1]
  def change
    add_column :weight_goals, :current, :bigint
    add_column :weight_goals, :desired, :bigint
    add_column :weight_goals, :deadline, :date
    add_column :weight_goals, :penalty, :bigint
    add_reference :weight_goals, :user, null: false, foreign_key: true
  end
end
