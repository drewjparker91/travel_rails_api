class ReviewsController < ApplicationController
  before_action :restrict_access

  def index
    if params[:city]
    city = params[:city]
    end
    if params[:country]
    country = params[:country]
    end
    @reviews = Review.search(city, country).paginate(page: params[:page], per_page:3)
    json_response(@reviews)
  end

  def show
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def create
    @review = Review.create!(review_params)
    json_response(@review, :created)
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

  def restrict_access
    api_key = ApiKey.find_by_token(params[:token])
    head :unauthorized unless api_key
  end

  # def restrict_access
  #   authenticate_or_request_with_http_token do |token, options|
  #     ApiKey.exists?(token: token)
  #   end
  # end

  def review_params
    params.permit(:body, :city, :country, :user_name, :rating)
  end

end