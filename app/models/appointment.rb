class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :artwork

    validates :date, :time, presence: true

end
