class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant])
    @review = @restaurant.reviews.build
  end

  def create
    @review = Review.new(params[:review])
    if @review.save
      flash[:success] = "Added a new Restaurant"
      redirect_to @review
    else
      render :new
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
    @review = Restaurant.find_by_id(params[:id])
    if @review.nil?
      @review = Restaurant.all
      render :index
    end
  end

end
