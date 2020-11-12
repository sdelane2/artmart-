class ArtworksController < ApplicationController
    def index
        @artworks = Artwork.all 
    end

    def show
        @artwork = Artwork.find(params[:id])
        @reviews = @artwork.reviews.each do |review|
            {
                text: review.text,
                name: review.user.first_name,
            }
            review.text
        end

        render :show
    end

end