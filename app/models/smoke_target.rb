class SmokeTarget < ApplicationRecord
    belongs_to :user

    # validates :smoke_time, :completed, presence: true
end
