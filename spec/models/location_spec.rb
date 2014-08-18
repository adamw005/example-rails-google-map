require 'rails_helper'

RSpec.describe Location, type: :model do
  describe "New location" do
    it "validates presence of address" do
      expect(Location.create.errors[:address].length).to eq(1)
    end
  end
end
