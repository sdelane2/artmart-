class FavoriteArtworksController < ApplicationController
    def new
        @favoriteartwork = FavoriteArtwork.new
    end

    def create
        @favorite_artwork = FavoriteArtwork.create(get_params)
        redirect_to favorite_artwork_path(@favorite_artwork)
    end


    private
    def get_params
        params.require(:favorite_artwork).permit(:user_id, :artwork_id)
    end

end