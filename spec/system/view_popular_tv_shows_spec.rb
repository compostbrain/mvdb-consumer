require 'rails_helper'
 RSpec.describe "viewing popular tv shows", type: :system do
  
  it "allows any user to see a list of popular tv shows", :vcr do
    visit popular_tv_shows_path
    expect(page).to have_content("Popular TV Shows")
  end
  
end