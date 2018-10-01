class Location < ApplicationRecord
  validates :name, :street, :city, :state, :region, :zipcode, presence: true
end
