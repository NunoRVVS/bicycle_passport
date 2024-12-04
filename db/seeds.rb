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

#  User.create!(name:"Joao", email:"joao1@mail.com", password:"123456")
#  User.create!(name:"Manel", email:"manel@mail.com", password:"123456")

User.create!(name:"Manel Rider", email:"manel1@mail.com", password:"123456")
User.create!(name:"Joao Velo", email:"joao2@mail.com", password:"123456")
User.create!(name:"Remco Evenepoel", email:"remco@mail.com", password:"123456")
User.create!(name:"Davide Ballerini", email:"davide@mail.com", password:"123456")
User.create!(name:"Mattia Cattaneo", email:"mattia@mail.com", password:"123456")
User.create!(name:"Josef Černý", email:"josef@mail.com", password:"123456")
User.create!(name:"Ilan Van Wilder", email:"ilan@mail.com", password:"123456")
User.create!(name:"Louis Vervaeke", email:"louis@mail.com", password:"123456")
User.create!(name:"Stefano Oldani", email:"stefano@mail.com", password:"123456")
User.create!(name:"Alexander Krieger", email:"alexander@mail.com", password:"123456")
User.create!(name:"Yukiya Arashiro", email:"yukiya@mail.com", password:"123456")
User.create!(name:"Diego Pablo Sevilla", email:"diego@mail.com", password:"123456")
User.create!(name:"Pieter Serry", email:"pieter@mail.com", password:"123456")
User.create!(name:"Charlie Quarterman", email:"charlie@mail.com", password:"123456")


 bicycle = Bicycle.create!(name: 'Trojan',
                           category: 'Mountain',
                           serial_number: '1f2D34l5',
                           description: 'The first bike I ever bought',
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

 Component.create!(name: "29er Carbon MTB",
  make:"DCB",
  serial_number: "ty2356q",
  description: "The DCB Carbon MTB Ultralight Wheels are our lightest wheels yet still being capable for XC/Trail riding and racing. The rims are ultralight at 285g a rim for the 27mm (22id) create a ridiculously light rotating mass and the 34mm (28id) are only 310g!!")

  # # --------------------

 Component.create!(name: "26er or 27.5 Carbon Fat",
 make:"DCB",
 serial_number: "rz2856qy",
 description: "Our wheelset features reliable, low maintenance, and affordable Novatec hubs and DCB carbon rims for reduced rolling weight. Hand-built and tubeless ready, these wheels are a perfect match for our FT26 carbon fat frame, or are a great upgrade for you fat bike!")

# # --------------------

 Component.create!(name: "XCT29 Felt Doctrine Style",
 make:"DCB",
 serial_number: "y9xp135QR",
 description: "No better place to start than with a quality and affordable carbon frame. This XCT29 frame from DIY Carbon Bikes is top of the line for price and durability. Built with triple enforced T800 Carbon, a 31.6 seat tube for wider posts and dropper posts, and equipped with a durable and low maintenance BSA threaded bottom bracket, this frame is for those that want a hardtail that takes the rougher lines.")


# # --------------------

 Component.create!(name: "XTR PDM9100",
 make:"Shimano",
 serial_number: "PDM9100",
 description: "The Shimano XTR M9100S SPD MTB pedals, top of the range from the prestigious Japanese manufacturer, have been specifically designed for XC use. With a shaft length of -3 mm compared to Shimano XTR M9100 pedals to compensate for the Q-factor of bikes with Boost transmission.")


# # --------------------

 Component.create!(name: "REDESIGN 4",
 make:"NAGO",
 serial_number: "NGRDS4",
 description: "The design of the NAGO R4 is innovative and aerodynamic, the weight is reduced to minimum and its 245x137mm dimensions are compact. The traditional T-shape allows a good freedom of movement, while the slightly advanced anatomical center grants a more aggressive riding position. The ergonomic semi-round shape facilitates the forward rotation of the pelvis, allowing you to effortlessly reach the handlebar.")


# # --------------------

 Component.create!(name: "Gel Bicycle Seat Mountain Bike",
 make:"EC90",
 serial_number: "P1U42EVO43",
 description: "Brand new item, unworn, unopened, undamaged, in original packaging (where applicable). The packaging should be the same as that found in stores, unless the item is handmade or has been packaged by the manufacturer in a package with no printed identification or plastic bag. See the seller's listing for full details.")


# # --------------------

 Component.create!(name: "Cassete Deore",
 make:"Shimano",
 serial_number: "M5100",
 description: "The Shimano M5100 11-speed cassette is ideal for mountain bikes with 1 or 2-speed cranks. It offers customized shift levels for the driver and therefore maximum cadence control on any terrain.")


# # --------------------

 Component.create!(name: "GEN 8 Disc Road Bicycle Frameset",
 make:"SLR9",
 serial_number: "tz23uibm",
 description: "Material: Carbon, Fiber Toray T1000, Color: Any Black, Painting/Customize, Finish: UD Matte, Black/Glossy")


# # --------------------

 Component.create!(name: "UD-3K",
 make:"Superlogic",
 serial_number: "P1iM92ux",
 description: "Glossy Carbon Bicycle Handlebar, New Drop Bar, Road Bike, 400mm, 420mm, 440mm")
