class RemoveRefereeFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :referee, :boolean
  end
end
