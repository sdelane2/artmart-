class Review < ApplicationRecord
    belongs_to :user
    belongs_to :artwork

    # validates :text, length: { minimum: 100 }
end
