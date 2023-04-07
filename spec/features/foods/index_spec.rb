require 'rails_helper'

RSpec.describe 'the foods index page' do
  it 'displays the results from the search' do
    visit '/'
    
    fill_in "q", with: "sweet potatoes"
    click_button "Search"

    expect(current_path).to eq(foods_path)

    expect(page).to have_content("Total Results: 425232")
    expect(page).to have_css('#page_results', count: 10)

    within(first('#page_results')) do 
      within('#code') do
        expect(page).to have_content("GTIN/UPC code: 010300064220")
      end
      within('#brand_owner') do
        expect(page).to have_content("Brand Owner: Snyder's-Lance, Inc.")
      end
      within('#description') do
        expect(page).to have_content("Description: BERRY NUT BLEND BREAKFAST IN THE GO!")
      end
      within('#ingredients') do
        expect(page).to have_content("Ingredients: VANILLA GRANOLA")
      end
    end
  end
end