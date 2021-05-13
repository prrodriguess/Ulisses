class CreateWeightTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :weight_targets do |t|

      t.timestamps
    end
  end
end
