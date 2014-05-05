module Countries
  extend self

  def list
    @list ||= get_countries
  end

  def get_countries
    countries = []
    response = RestClient.get("http://restcountries.eu/rest/v1/all")
    json_response = JSON.parse response
    json_response.each_with_index do |country, index|
      countries << Country.new(country.merge("id" => index+1))
    end
    countries
  end
end  
