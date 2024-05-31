# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

restaurants = [
  { name: "Restaurant_1", address: "Address_1", phone_number: "1111", category: "chinese" },
  { name: "Restaurant_2", address: "Address_2", phone_number: "2222", category: "italian"},
  { name: "Restaurant_3", address: "Address_3", phone_number: "3333", category: "japanese"},
  { name: "Restaurant_4", address: "Address_4", phone_number: "4444", category: "french"},
  { name: "Restaurant_5", address: "Address_5", phone_number: "5555", category: "belgian"}
]

restaurants.each { |restaurant| Restaurant.create!(restaurant) }
