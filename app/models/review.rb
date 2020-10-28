class Review < ApplicationRecord
  validates :body, :city, :country, :user_name, :rating, presence: true
  scope :search, -> (city, country) { where("city ilike ? AND country ilike ?", "%#{city}%", "%#{country}%") }
end