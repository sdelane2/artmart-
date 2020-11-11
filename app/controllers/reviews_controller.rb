class ReviewsController < ApplicationController
    before_action :set_review, only: [:show, :edit, :update, :destroy]
    before_action :set_artwork


    def new
        @review = Review.new
    end

    def show
        @review = Review.find(params)
    end

    def create
        @review = Review.new(review_params)
        @review.user_id = @current_user.id
        @review.artwork_id = @artwork.id
        if @review.save
            redirect_to @artwork
        else
            render 'new'
        end
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        @review.update
        redirect_to review_path(@review)
    end

    private

    def set_review
        @review = Review.find(params[:id])
    end
  
    def set_artwork
        @artwork = Artwork.find(params[:artwork_id])
    end

    def review_params
        params.require(:review).permit(:text, :recommend, :user_id, :artwork_id)
    end

end