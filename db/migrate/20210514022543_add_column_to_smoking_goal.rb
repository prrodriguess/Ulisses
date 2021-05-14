class AddColumnToSmokingGoal < ActiveRecord::Migration[6.1]
  def change
    add_column :smoking_goals, :current, :bigint
    add_column :smoking_goals, :desired, :bigint
    add_column :smoking_goals, :deadline, :date
    add_column :smoking_goals, :penalty, :bigint
    add_reference :smoking_goals, :user, null: false, foreign_key: true
  end
end
