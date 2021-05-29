class AddRefereeColumnToGoals < ActiveRecord::Migration[6.1]
  def change
    add_column :goals, :referee, :string
  end
end
