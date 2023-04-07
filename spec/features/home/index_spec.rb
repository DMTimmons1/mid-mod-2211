require 'rails_helper'

RSpec.describe 'the home page' do
  it 'has a form to search by ingredient' do
    visit '/'
    expect(page).to have_link("Ingredient Search")
    expect(page).to have_field("q")
    expect(page).to have_button("Search")
  end
end