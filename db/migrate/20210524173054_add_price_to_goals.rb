class AddPriceToGoals < ActiveRecord::Migration[6.1]
  def change
    add_monetize :goals, :price, currency: { present: false }
  end
end
