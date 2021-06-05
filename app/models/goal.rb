class Goal < ApplicationRecord
    belongs_to :user
    # belongs_to :owner, class_name: "User", foreign_key: "owner_id"
    # belongs_to :referee, class_name: "User", foreign_key: "referee_id"
    validates :deadline, :penalty, :title, :referee, presence: true
    monetize :price_cents
    # monetize :amount_cents
end
