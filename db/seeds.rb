# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
20.times do |i|
  Review.create!(body: Faker::Hipster.paragraph_by_chars(characters: 50, supplemental: false), city: Faker::Address.city, country: Faker::Address.country, rating: rand(1...6), user_name: Faker::Books::Dune.character)
end    
