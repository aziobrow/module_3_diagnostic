class StationDisplay


  def full_address(station)
    "#{station.street}, " + "#{station.city}, " + "#{station.state} " + "#{station.zipcode}"
  end
end
