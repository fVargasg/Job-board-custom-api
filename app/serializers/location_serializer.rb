class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :city, :state, :zipcode, :region
end
