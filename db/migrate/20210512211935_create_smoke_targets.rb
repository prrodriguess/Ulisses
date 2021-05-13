class CreateSmokeTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :smoke_targets do |t|

      t.timestamps
    end
  end
end
