class Artwork < ApplicationRecord
    has_many :purchased_artworks
    has_many :users, through: :purchased_artworks
    has_many :reviewed_artworks
    has_many :reviews, through: :reviewed_artworks
end
