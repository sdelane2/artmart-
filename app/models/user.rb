class User < ApplicationRecord
    has_many :reviews
    has_many :favorite_artworks
    has_many :artworks, through: :favorite_artworks
    has_many :artworks, through: :reviews 
    has_many :appointments
    has_many :artworks, through: :appointments

    has_secure_password

    validates :first_name, :last_name, :email, :password, presence: true
    validates :email, uniqueness: true

    def status
        if self.reviews.count >= 5
            self.vip_status = true
            "VIP Collector"
        else
            "Pleeb"
        end
    end

    def sorted_appointments
        self.appointments.sort_by { |appt| appt.date }
    end

end
