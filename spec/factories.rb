FactoryBot.define do
  factory(:review) do
    body {Faker::Hacker.say_something_smart}
    city {Faker::Address.city}
    country {Faker::Address.country}
    user_name {Faker::Books::Dune.character}
    rating {rand(1...6)}
  end
end

#Review.create!(body: Faker::Hacker.say_something_smart, city: Faker::Address.city, country: Faker::Address.country, rating: rand(1...6), user_name: Faker::Books::Dune.character)
