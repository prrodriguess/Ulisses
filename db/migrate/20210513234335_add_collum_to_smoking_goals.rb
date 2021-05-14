class AddCollumToSmokingGoals < ActiveRecord::Migration[6.1]
  def change
    add_column :smoking_goals, :current, :bigint
    add_column :smoking_goals, :desired, :bigint
    add_column :smoking_goals, :deadline, :datetime
    add_column :smoking_goals, :penalty, :string
    remove_column_reference :smoking_goals, :user_id, null: false, foreign_key: false
  end
end
