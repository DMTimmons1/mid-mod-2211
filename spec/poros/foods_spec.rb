require 'rails_helper'

RSpec.describe 'the foods poros' do
  it 'returns all the foods as a poro from the api call' do
    @foods = FoodFacade.get_foods("sweet potatoes")
    @foods.each do |food|
      expect(food.code).to be_a(String) 
      expect(food.description).to be_a(String)
      expect(food.brand).to be_a(String) 
      expect(food.ingredients).to be_a(String) 
    end
  end
end