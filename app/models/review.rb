class Review < ApplicationRecord
  scope :search, -> (city, country) { where("city ilike ? AND country ilike ?", "%#{city}%", "%#{country}%") }
end