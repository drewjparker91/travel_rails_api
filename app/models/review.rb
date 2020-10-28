class Review < ApplicationRecord
  validates :body, :city, :country, :user_name, :rating
  scope :search, -> (city, country) { where("city ilike ? AND country ilike ?", "%#{city}%", "%#{country}%") }
end