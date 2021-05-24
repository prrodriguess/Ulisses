class AddColunmToGoal < ActiveRecord::Migration[6.1]
  def change
    add_column :goals, :goal_type, :string
    add_column :goals, :deadline, :date
    add_column :goals, :penalty, :bigint
    add_reference :goals, :user, null: false, foreign_key: true
  end
end
