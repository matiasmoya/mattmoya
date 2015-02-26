require "rails_helper"

RSpec.feature "Home Page", :type => :feature do
  scenario "User access to home page" do
    visit root_path

    expect(page).to have_text("Lorem ipsum")
  end
end