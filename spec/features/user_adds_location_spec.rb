require 'rails_helper'

feature "User adds location" do
  scenario "successfully" do
    visit "/"

    fill_in "Address", with: "320 1st St N #711, Jacksonville Beach, FL 32250"
    click_button "Add Address"

    expect(page).to have_text("320 1st St N #711, Jacksonville Beach, FL 32250")
  end

  scenario "missing address" do
    visit "/"

    click_button "Add Address"

    expect(page).to have_text("Address can't be blank")
  end
end
