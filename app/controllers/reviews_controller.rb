class ReviewsController < ApplicationController
  
  def index
    @reviews = Review.all 
    json_response(@reviews)
  end

  def show
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def create
    @review = Review.create!(review_params)
    json(@review, :created)
  end

  def update
    @review = Review.find(params[:id])
    if @review.update!(review_params)
      render status: 200, json: { message: "review has been updated" }
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy!
      render status: 200, json: { message: "review destroyed!" }
    end
  end

  private
  def review_params
    params.permit(:body, :city, :country, :user_name, :rating)
  end
end