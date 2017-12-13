class SearchController < ApplicationController
  def index
    @stations = Station.where(fuel_type: ["ELECT", "LPG"])
  end
end
