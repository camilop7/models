class ReviewsController < ApplicationController
end
class ReviewsController < ApplicationController
  def index
    reviews = Review.all
    render json: reviews
  end

  def show
    review = Review.find(params[:id])
    render json: review
  end

  def create
    review = Review.new(review_params)
    if review.save
      render json: review
    else
      render json: review.errors
    end
  end

  def update
    review = Review.find(params[:id])
    if review.update(review_params)
      render json: review
    else
      render json: review.errors
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    render json: { message: 'Review successfully deleted' }
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :user_id, :book_id)
  end
end
