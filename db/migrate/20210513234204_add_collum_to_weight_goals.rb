class AddCollumToWeightGoals < ActiveRecord::Migration[6.1]
  def change
    add_column :weight_goals, :current, :bigint
    add_column :weight_goals, :desired, :bigint
    add_column :weight_goals, :deadline, :datetime
    add_column :weight_goals, :penalty, :string
    add_reference :weight_goals, :user_id, null: false, foreign_key: false
  end
end
