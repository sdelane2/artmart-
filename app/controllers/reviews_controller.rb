class ReviewsController < ApplicationController

    def new
        @review = Review.new
    end

    def show
        @review = Review.find(params)
    end

    def create
        @review = Review.create(review_params)
        @review.user = current_user
        if @review.valid?
            redirect_to review_path(@review.artwork)
        else
            flash[:review_errors] = @review.errors.full_messages
            redirect_to new_review_path
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

        def review_params
            params.require(:review).permit(:text, :recommend).merge(:user_id => current_user.id)
        end

end