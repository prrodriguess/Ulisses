class AddColumnToGoals < ActiveRecord::Migration[6.1]
  def change
    add_column :goals, :state, :string
    add_column :goals, :checkout_session_id, :string
  end
end
