class ReviewsController < ApplicationController

  def index
    @reviews = Review.find_all_by_restaurant_id(params[:restaurant_id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(params[:review])
    if @review.save
      flash[:success] = "Added a new Review"
      redirect_to restaurant_review_path(@restaurant, @review)
    else
      render :show
    end
  end

  def edit
    @review = Review.find(params[:id])
    render :edit
  end

  def update
    @review = Review.find(params[:id])
    @review.update_attributes(params[:restaurant])

    if @review.save
      flash[:success] = "Updated Restaurant"
      redirect_to @review
    else
      render :edit
    end
  end

  def show
    @review = Review.find_by_id(params[:id])
    redirect_to :index unless @review
  end

end
