class FavoriteArtwork < ApplicationRecord
    belongs_to :artwork 
    belongs_to :user

    validates_uniqueness_of :user_id, :scope => [:artwork_id]
end
