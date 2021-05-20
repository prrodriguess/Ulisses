class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :state
      t.monetize :amount, currency: { present: false }
      t.string :checkout_session_id
      t.references :user, null: false, foreign_key: true
      t.references :weight_goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
