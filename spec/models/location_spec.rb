require 'rails_helper'

RSpec.describe Location, type: :model do
  describe "Validations" do
    it "validates presence of address" do
      expect(Location.create.errors[:address].length).to eq(1)
    end
  end

  describe 'Geolocation' do
    let(:location) { Location.create(address: "320 1st St N #711, Jacksonville Beach, FL 32250") }

    it "geocodes on create" do
      expect(location.latitude).to eq(30.29197)
      expect(location.longitude).to eq(-81.390562)
    end
  end
end
