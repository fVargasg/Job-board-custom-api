class Region < ApplicationRecord
  validates :name, :description, presence: true
end
