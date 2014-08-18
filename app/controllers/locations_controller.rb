class LocationsController < ApplicationController

  def index
    @location = Location.new
    @locations = Location.all
  end

  def create
    @location = Location.new(location_params)
    @locations = Location.all

    if @location.save
      redirect_to :locations
    else
      render :index
    end
  end

  private

  def location_params
    params.require(:location).permit(:address)
  end
end
