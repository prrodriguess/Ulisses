class AddPriceToWeightGoals < ActiveRecord::Migration[6.1]
  def change
    add_monetize :weight_goals, :price, currency: { present: false }
  end
end
