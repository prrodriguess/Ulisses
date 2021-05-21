class CreateWeightGoals < ActiveRecord::Migration[6.1]
    def change
      create_table :weight_goals do |t|
  
        t.timestamps
      end
    end
  end