class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :weight_goal

  monetize :amount_cents
end
