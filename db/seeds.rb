# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'
#set locale config for Faker
Faker::Config.locale = 'da-DK'
Faker::PhoneNumber.country_code

p '============Enter in Faker================='

Restaurant.destroy_all
10.times do
  restaurant = Restaurant.new(
    name: Faker::Creature::Bird.common_family_name,
    address: Faker::Locations::Australia.location,
    category: Restaurant::CAT_REST.sample,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code
  )
  restaurant.save!
end

p '============STOP Faker================='
