

class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

 def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      flash[:success] = "Added a new Restaurant"
      redirect_to @restaurant
    else
      render :new
    end
  end

   def edit
    @restaurant = Restaurant.find(params[:id])
    render :edit
  end

   def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update_attributes(params[:restaurant])
    
    if @restaurant.save
      flash[:success] = "Updated Restaurant"
      redirect_to @restaurant
    else
      render :edit
    end
  end

  def show
    @restaurant = Restaurant.find_by_id(params[:id])
    if @restaurant.nil?
      @restaurant = Restaurant.all
      render :index
    end
  end

end
