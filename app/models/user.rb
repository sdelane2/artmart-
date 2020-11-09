class User < ApplicationRecord
    has_many :reviews
    has_many :purchased_artworks
    has_many :artworks, through: :purchased_artworks
end
