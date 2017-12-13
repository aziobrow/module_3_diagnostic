def Station
  def initialize(raw_station_info)
    @name = raw_station_info.station_name
    @street = raw_station_info.street_address
    @city = raw_station_info.city
    @state = raw_station_info.state
    @zipcode = raw_station_info.zip
    @fuel_type = raw_station_info.fuel_type
    @distance = raw_station_info.distance
    @access_hours = raw_station_info.access_days_time
  end

  def self.nearest_stations(zipcode)
    require "pry"; binding.pry
    all_stations_raw_info = NrelService.new(zipcode).get_station_info
    all_stations_raw_info.map do |one_station_info|
      new(one_station_info)
    end
  end



end
