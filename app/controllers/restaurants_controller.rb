class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])
  end

  def create
    @restaurant = Restaurant.create(id: params[:id], name: params[:name], address: params[:address], website: params[:website], rating: params[:rating], description: params[:description])

    render :show
  end

  def update
    restaurant_id = params[:id]
    @restaurant = Restaurant.find_by(id: restaurant_id)
    @restaurant.update(id: params[:id], name: params[:name], address: params[:address], website: params[:website], rating: params[:rating], description: params[:description])
    #updating this from postman requires all attributes be completed or they will be null when updated

    render :show
  end

  def destroy
    restaurant_id = params[:id]
    @restaurant = Restaurant.find_by(id: restaurant_id)
    @restaurant.destroy

    render :nothing => true, :status => 200
  end

end
