require 'rails_helper'

feature "User can visit search page" do
  scenario "and see parameters visible in the url" do
    visit "/"
    fill_in 'q', :with => '80203'
    click_on "Locate"

    expect(current_path).to eq(search_path)
    url = URI.parse(current_url).to_s
    expect(url).to include("80203")
  end

  scenario "and sees details for closest stations" do
    visit "/"
    fill_in 'q', :with => '80203'
    click_on "Locate"

    expect(page).to have_content("UDR")
    expect(page).to have_content("800 Acoma St, Denver, CO 80204")
    expect(page).to have_content("Fuel Type: ELEC")
    expect(page).to have_content("0.31422 miles away")
    expect(page).to have_content("Open 24 hours daily")
  end
end
