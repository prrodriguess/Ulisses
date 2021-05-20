class WeightGoal < ApplicationRecord
    belongs_to :user

    validates :current, :desired, :deadline, :penalty, :price, presence: true
    monetize :price_cents
end
