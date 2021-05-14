class RemoveTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :smoke_targets
  end
end
