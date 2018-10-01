class Posting < ApplicationRecord
  belongs_to :user
  validates :title, :description, :category, :location, :poster, :status, :user, presence: true
  
end
