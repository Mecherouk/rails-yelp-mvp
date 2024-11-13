# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese", phone_number: "123-456-7890")
puts "Created Dishoom"
Restaurant.create!(name: "Luigi's Trattoria", address: "456 Rome Ave, Rome", category: "italian", phone_number: "987-654-3210")
puts "Created Luigi's Trattoria"
Restaurant.create!(name: "Le Petit Paris", address: "789 Paris Rd, Paris", category: "french", phone_number: "456-789-0123")
puts "Created Le Petit Paris"
Restaurant.create!(name: "The Great Wall", address: "101 Beijing Blvd, Beijing", category: "chinese", phone_number: "321-654-0987")
puts "Created The Great Wall"
Restaurant.create!(name: "Belgian Waffles House", address: "202 Brussels Ln, Brussels", category: "belgian", phone_number: "654-321-1234")
puts "Created Belgian Waffles House"

puts "Finished! Created #{Restaurant.count} restaurants."
