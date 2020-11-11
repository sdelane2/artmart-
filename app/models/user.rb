class User < ApplicationRecord
    has_many :reviews
    has_many :favorite_artworks
    has_many :artworks, through: :favorite_artworks
    has_many :artworks, through: :reviews 

    has_secure_password

    validates :first_name, :last_name, presence: true 

    def status
        if self.vip_status
            puts "VIP"
        else
            puts "Collector"
        end
    end

end
