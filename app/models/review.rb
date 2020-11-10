class Review < ApplicationRecord
    belongs_to :user
    has_many :reviewed_artworks
    has_many :artworks, through: :reviewed_artworks

    validates :text, length: { minimum: 100 }
end
