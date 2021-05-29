class Goal < ApplicationRecord
    belongs_to :user
    validates :deadline, :penalty, :title, presence: true
    monetize :price_cents
    monetize :amount_cents
end
