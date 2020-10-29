class Review < ApplicationRecord
  validates :body, :city, :country, :user_name, :rating, presence: true
  validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  scope :search, -> (city, country) { where("city ilike ? AND country ilike ?", "%#{city}%", "%#{country}%") }
  # scope :most_recent, -> { order(created_at: :desc).limit(2) }
  scope :random_city, -> (city_array) { where("city ilike ?", "#{city_array.sample}") }
  
  #callback
  before_save(:titleize)

  private
    def titleize
      self.city = self.city.titleize
      self.country = self.country.titleize
    end
end