class Artwork < ApplicationRecord
    has_many :favorite_artworks
    has_many :users, through: :favorite_artworks
    has_many :reviews
    has_many :users, through: :reviews
    has_many :appointments
    has_many :users, through: :appointments


    def previous
        Artwork.where(["id < ?", id]).order(:id).last
    end
  
    def next
        Artwork.where(["id > ?", id]).order(:id).first
    end
end
