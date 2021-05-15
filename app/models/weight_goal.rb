class WeightGoal < ApplicationRecord
    belongs_to :user

    validates :current, :desired, :deadline, :penalty, presence: true
end
