class SearchController < ApplicationController
  def index
    @fuel_types = FuelType.where(name: ["Electric", "Propane"])
  end
end
