class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.get_foods(params[:search])
    @results = FoodFacade.get_foods_results_count(params[:search])
  end
end