class ReviewedArtwork < ApplicationRecord
    belongs_to :review
    belongs_to :artwork
end
