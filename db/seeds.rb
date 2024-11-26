# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

bicycle = Bicycle.create!(name: 'My Bike', category: 'Mountain', serial_number: '12345', description: 'My first bike', make: 'Trek', user: User.first)
InsurancePolicy.create!(insurer: 'XYZ Insurance', policy_number: '12345', description: 'Basic coverage', bicycle: bicycle)
Maintenance.create!(date: Date.today, shop: 'Bike Fix', description: 'Tire replacement', bicycle: bicycle)
