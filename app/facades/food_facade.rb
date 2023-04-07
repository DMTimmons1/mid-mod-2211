class FoodFacade
  def self.get_foods(search)
    data = ApiService.call("/fdc/v1/foods/search?query=#{search}&dataType=&pageSize=10&sortBy=dataType.keyword&sortOrder=asc")
    data[:foods].map do |food|
      Food.new(food)
    end
  end

  def self.get_foods_results_count(search)
    data = ApiService.call("/fdc/v1/foods/search?query=#{search}&dataType=&pageSize=10&sortBy=dataType.keyword&sortOrder=asc")
    TotalHits.new(data)
  end
end