# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
mac_do =  { name: "mac_do", address: "10 rue Jean Moulin", category: "belgian" }
burger_king =  { name: "burger_king", address: "1 rue Camus", category: "italian" }
five_guys =  { name: "five_guys", address: "1 place Ronde", category: "italian" }

[ dishoom, pizza_east, mac_do, burger_king, five_guys ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
