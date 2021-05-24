class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :goal

  monetize :amount_cents
end
