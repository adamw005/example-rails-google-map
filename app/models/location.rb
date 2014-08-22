class Location < ActiveRecord::Base
  validates :address, presence: true
  geocoded_by :address
  after_create :geocode
end
