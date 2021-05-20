class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :weight_goals

  monetize :amount_cents
end
