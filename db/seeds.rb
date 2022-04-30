# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movies::PrincessBride.quote,
    poster_url: Faker::LoremFlickr.image,
    rating: rand(0..10)
  )
end
