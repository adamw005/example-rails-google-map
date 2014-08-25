class LocationsController < ApplicationController

  def index
    @location = Location.new
    @locations = Location.all
    @locations_hash = location_markers(@locations)
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

  def location_markers(locations)
    Gmaps4rails.build_markers(locations) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
      marker.infowindow render_to_string partial: '/locations/location_infowindow', locals: { location: location }
    end
  end
end
