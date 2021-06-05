class Goal < ApplicationRecord
    belongs_to :user
    validates :deadline, :penalty, :title, :referee, presence: true
    monetize :price_cents
    # monetize :amount_cents
end
