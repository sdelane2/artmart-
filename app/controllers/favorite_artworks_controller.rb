class FavoriteArtworksController < ApplicationController
    
    def show
        @favorite_artwork = FavoriteArtwork.find(params[:id])
    end
    
    def index
        @favorite_artworks = FavoriteArtwork.all
    end
    
    def new
        @favorite_artwork = FavoriteArtwork.new
    end

    def create
        @favorite_artwork = FavoriteArtwork.create(get_params)
        redirect_to favorite_artworks_path(@current_user)
    end

    def destroy
        @favorite_artwork = FavoriteArtwork.find(params[:id])
        @favorite_artwork.destroy 
        redirect_to favorite_artworks_path(@current_user)
    end



    private
    def get_params
        params.require(:favorite_artwork).permit(:user_id, :artwork_id)
    end

end