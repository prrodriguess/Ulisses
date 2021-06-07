class AddDoneToGoal < ActiveRecord::Migration[6.1]
  def change
    add_column :goals, :done, :boolean, default: false
  end
end
