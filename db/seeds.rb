# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
# Seed your restaurant database in db/seeds.rb with at least 5 valid restaurant records.
require 'faker'

# Clear existing data
Restaurant.destroy_all

# Create valid restaurant records using Faker
puts "Creating new restaurants..."
20.times do
  name = Faker::Restaurant.name
  address = Faker::Address.street_address
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample

  Restaurant.create!(
    name: name,
    address: address,
    category: category
  )
end

puts "Seeded restaurants using Faker"
