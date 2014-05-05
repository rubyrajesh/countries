class Country
  attr_accessor :id, :name, :capital, :region, :sub_region, :calling_code, :area, :currencies, :top_level_domain, :languages
  
  def initialize(attributes)
    @id = attributes["id"]
    @name = attributes["name"]
    @capital = attributes["capital"]
    @region = attributes["region"]
    @sub_region = attributes["sib_region"]
    @calling_code = attributes["calling_code"]
    @area = attributes["area"]
    @currencies = attributes["currencies"]
    @top_level_domain = attributes["top_level_domain"]
    @languages = attributes["languages"]
  end

  def languages
    @languages.join(', ')
  end

  def currencies
    @currencies.join(', ')
  end
end
