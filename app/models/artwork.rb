class Artwork < ApplicationRecord
    has_many :favorite_artworks
    has_many :users, through: :favorite_artworks
    has_many :reviews
    has_many :users, through: :reviews
    has_many :appointments
    has_many :users, through: :appointments
end
