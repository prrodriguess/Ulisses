class AddRefereeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :referee, :boolean
  end
end
