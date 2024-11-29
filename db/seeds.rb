# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# InsurancePolicy.destroy_all
# Maintenance.destroy_all
# Bicycle.destroy_all
# User.destroy_all
# Component.destroy_all

User.create!(name:"Joao", email:"joao1@mail.com", password:"123456")

bicycle = Bicycle.create!(name: 'My Bike',
                          category: 'Mountain',
                          serial_number: '12345',
                          description: 'My first bike',
                          make: 'Trek',
                          user: User.first)

InsurancePolicy.create!(insurer: 'XYZ Insurance', policy_number: '12345', description: 'Basic coverage', bicycle: bicycle)
Maintenance.create!(date: Date.today, shop: 'Bike Fix', description: 'Tire replacement', bicycle: bicycle)
Maintenance.create!(date: "2024-11-30", shop: 'Balfes', description: '1st revision', bicycle: bicycle)
Maintenance.create!(date: "2024-12-22", shop: 'Vluption', description: 'Crank repair', bicycle: bicycle)
Maintenance.create!(date: "2025-02-15", shop: 'Greenwich Bike Shop', description: '1st gear revision', bicycle: bicycle)
Maintenance.create!(date: "2025-05-01", shop: 'Greenwich Bike Shop', description: '6 month revision', bicycle: bicycle)
Maintenance.create!(date: "2025-03-20", shop: 'Greenwich Bike Shop', description: 'Race Full Bike Check up', bicycle: bicycle)
Maintenance.create!(date: "2025-08-01", shop: 'No Stress Bike Shop', description: 'New wheel pair set up (due temporary stock shortage there is a delay and due time is for the 1st of August)', bicycle: bicycle)


Component.create!(name: "Rim",
                make:"Bontrager",
                serial_number: "XNC 2142323151",
                description: "Durable double-wall rim with 20mm internal, 26mm external width. Bontrager Connection double wall, non-eyeletted rims")
Component.create!(name: "Shifter",
                make:"Shimano",
                serial_number: "XNC 2142323151",
                description: "Altus M2010, 9-speed")
Component.create!(name: "Crank",
                make:"Trek",
                serial_number: "XNC 2142323151",
                description: "Diamant Wheel Top DCRX1 Double Crankset")
