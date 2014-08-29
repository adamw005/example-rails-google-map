require 'rails_helper'

feature "User removes location" do
  before { Location.create(address: "320 1st St N #711, Jacksonville Beach, FL 32250") }

  scenario "successfully" do
    visit "/"

    expect(page).to have_text("320 1st St N #711, Jacksonville Beach, FL 32250")
    click_link "Delete"

    expect(page).to have_text("Succesfully removed 320 1st St N #711, Jacksonville Beach, FL 32250")
  end
end
