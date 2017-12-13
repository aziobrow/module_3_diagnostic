class SearchController < ApplicationController
  def index
    @stations = Station.nearest_stations(params[:q])
    @station_presenter = StationDisplay.new
  end
end
