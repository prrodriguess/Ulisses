class Goal < ApplicationRecord
    belongs_to :user

    validates :deadline, :penalty, :title, :price, presence: true
    monetize :price_cents
end
