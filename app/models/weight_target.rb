class WeightTarget < ApplicationRecord
    belongs_to :user

    # validates :weight, :completed, presence: true
end
