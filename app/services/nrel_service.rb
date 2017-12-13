class NrelService

attr_reader :conn, :zipcode

  def initialize(zipcode)
    @zipcode = zipcode
    @conn = Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_station_info
    get_json("/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['API_KEY']}&location=#{@zipcode}&fuel_type=ELEC,LPG&limit=10")[:fuel_stations]
  end

  private
  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end


end
