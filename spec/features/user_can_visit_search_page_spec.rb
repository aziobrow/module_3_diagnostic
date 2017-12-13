require 'rails_helper'

feature "User can visit search page" do
  scenario "and see parameters visible in the url" do
    visit "/"
    click_on "Locate"

    expect(page).to have_current_path(search_path(search: '80203'))
  end
end
