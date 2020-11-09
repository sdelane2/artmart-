class Artwork < ApplicationRecord
    has_many :purchased_artworks
    has_many :users, through: :purchased_artworks
end
