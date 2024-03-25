# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Flower.create(name: "Rose", price: 400, color: "Red", photo: "rose_red.webp")
Flower.create(name: "Rose", price: 350, color: "White", photo: "rose_white.webp")
Flower.create(name: "Lily", price: 300, color: "Yellow", photo: "lily_yellow.webp")
Flower.create(name: "Daisy", price: 200, color: "White", photo: "daisy_white.webp")
Flower.create(name: "Daisy", price: 200, color: "Yellow", photo: "daisy_yellow.webp")
