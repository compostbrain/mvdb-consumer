require 'rails_helper'

RSpec.describe "Search for tv shows by title", type: :system do
  it "shows a search results for that title", :vcr do
    title = "Silicon Valley"
    visit popular_tv_shows_path
    fill_in "Search TV Shows:",	with: title
    click_on "Search"
    expect(page).to have_content("Silicon Valley")
  end
  
  
end
