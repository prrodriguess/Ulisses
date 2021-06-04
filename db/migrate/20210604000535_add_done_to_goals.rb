class AddDoneToGoals < ActiveRecord::Migration[6.1]
  def change
    add_column :goals, :done, :boolean
  end
end
