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
end
