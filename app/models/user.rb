class User < ApplicationRecord
    has_many :reviews
    has_many :favorite_artworks
    has_many :artworks, through: :favorite_artworks

   # has_secure_password

    validates :first_name, :last_name, presence: true 
end
