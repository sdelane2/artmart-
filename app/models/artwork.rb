class Artwork < ApplicationRecord
    has_many :favorite_artworks
    has_many :users, through: :favorite_artworks
    has_many :reviewed_artworks
    has_many :reviews, through: :reviewed_artworks
end
