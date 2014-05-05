json.array!(@countries) do |country|
  json.extract! country, :id, :name, :capital, :region, :sub_region, :calling_code, :area, :currencies, :top_level_domain, :languages
  json.url country_url(country, format: :json)
end
