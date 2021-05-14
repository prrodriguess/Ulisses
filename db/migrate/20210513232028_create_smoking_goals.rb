class CreateSmokingGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :smoking_goals do |t|
      
      t.timestamps
    end
  end
end
