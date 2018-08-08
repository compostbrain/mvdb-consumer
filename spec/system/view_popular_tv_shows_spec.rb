require 'rails_helper'
 RSpec.describe "Popular tv shows index", type: :system do

  
  
  it "allows any user to see a list of popular tv shows", :vcr do

    visit popular_tv_shows_path
    
    expect(page).to have_content("Popular TV Shows")
  end

  it "allows any user to click on the title and see a details page" do
    visit popular_tv_shows_path
    click_on "The Big Bang Theory"
    expect(page).to have_content("Show Details")
  end
  
  
end