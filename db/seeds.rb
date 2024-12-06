# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

InsurancePolicy.destroy_all
Maintenance.destroy_all
Bicycle.destroy_all
User.destroy_all
Component.destroy_all

# User.create!(name:"Manel Rider", email:"manel1@mail.com", password:"123456")
# User.create!(name:"Joao Velo", email:"joao2@mail.com", password:"123456")
# User.create!(name:"Remco Evenepoel", email:"remco@mail.com", password:"123456")
# User.create!(name:"Davide Ballerini", email:"davide@mail.com", password:"123456")
User.create!(name:"Mattia Cattaneo", email:"mattia@mail.com", password:"123456")
url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733401398/mattia-cattaneo-2024_taola5.jpg"

file = URI.parse(url).open
User.last.photo.attach(io: file, filename: "mattia-cattaneo.jpg", content_type: "image/jpg")

User.create!(name:"Josef Černý", email:"josef@mail.com", password:"123456")
url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733401390/Josef_%C4%8Cern%C3%BD_fz85a6.jpg"

file = URI.parse(url).open
User.last.photo.attach(io: file, filename: "Josef-Cerny.jpg", content_type: "image/jpg")

User.create!(name:"Ilan Van Wilder", email:"ilan@mail.com", password:"123456")
url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733401387/ilan-van-wilder-2024_kcg4qc.jpg"

file = URI.parse(url).open
User.last.photo.attach(io: file, filename: "Ilian-Wilder.jpg", content_type: "image/jpg")


User.create!(name:"Louis Vervaeke", email:"louis@mail.com", password:"123456")
url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733401394/louis-vervaeke-2024_jlllzw.jpg"

file = URI.parse(url).open
User.last.photo.attach(io: file, filename: "Louis-Vervaeke.jpg", content_type: "image/jpg")



User.create!(name:"Stefano Oldani", email:"stefano@mail.com", password:"123456")
url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733401405/stefano-oldani-2024_aeyahn.jpg"

file = URI.parse(url).open
User.last.photo.attach(io: file, filename: "stefano-oldani.jpg", content_type: "image/jpg")


User.create!(name:"Alexander Krieger", email:"alexander@mail.com", password:"123456")
url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733401416/davide-ballerini-2024_odqdd9.jpg"

file = URI.parse(url).open
User.last.photo.attach(io: file, filename: "alexander krieger.jpg", content_type: "image/jpg")


User.create!(name:"Yukiya Arashiro", email:"yukiya@mail.com", password:"123456")
url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733401420/yukiya-arashiro-2024_squared_oic3mh.jpg"

file = URI.parse(url).open
User.last.photo.attach(io: file, filename: "Yukiya Arashiro.jpg", content_type: "image/jpg")


User.create!(name:"Diego Pablo Sevilla", email:"diego@mail.com", password:"123456")
User.create!(name:"Pieter Serry", email:"pieter@mail.com", password:"123456")
User.create!(name:"Charlie Quarterman", email:"charlie@mail.com", password:"123456")


bicycle = Bicycle.create!(name: 'Riding on Marshmallows',
                          category: 'Road',
                          serial_number: '12345',
                          description: 'Gold S Works',
                          make: 'Specialized',
                          favourite: true,
                          verified: true,
                          user: User.all[0])
url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733401004/Specialized_gold_s-works_tarmac_sl8_kscqrg.webp"
file = URI.parse(url).open
Bicycle.last.photo.attach(io: file, filename: "specialized.webp", content_type: "image/webp")




burnout = Bicycle.create!(name: 'Burnout',
                          category: 'Road',
                          serial_number: '1fC73387',
                          description: 'To cherish for ever and ever',
                          make: 'Giant',
                          favourite: true,
                          verified: true,
                          user: User.all[1])

url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733401003/Giant-Revolt-Advanced-0-brown-hematite_nmwsya.jpg"
file = URI.parse(url).open
Bicycle.last.photo.attach(io: file, filename: "giant-revolt.jpg", content_type: "image/jpg")

weekender = Bicycle.create!(name: 'Weekender',
                          category: 'Road',
                          serial_number: '854S387',
                          description: 'The one to show off',
                          make: 'Pinnarello',
                          favourite: true,
                          verified: true,
                          user: User.all[2])

url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733401004/Pinarello_Dogma_F_Disc_dlrdvy.jpg"
file = URI.parse(url).open
Bicycle.last.photo.attach(io: file, filename: "pinarello-weekender.jpg", content_type: "image/jpg")

performance = Bicycle.create!(name: 'Performance',
                          category: 'Road',
                          serial_number: '8r4p324',
                          description: 'The precious one',
                          make: 'Van Rysel',
                          favourite: true,
                          verified: true,
                          user: User.all[3])
url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733401004/Van_Rysel_AG2R_LA_MONDIALE_TEAM_rnaxf2.jpg"
file = URI.parse(url).open
Bicycle.last.photo.attach(io: file, filename: "vanrysel.jpg", content_type: "image/jpg")


performance = Bicycle.create!(name: 'Road Bender',
                          category: 'Road',
                          serial_number: '349d3jd4',
                          description: 'Asphalt King',
                          make: 'Giant',
                          favourite: true,
                          verified: true,
                          user: User.all[4])
                          #comment

url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733487716/Giant-Revolt-Advanced-0-brown-hematite_1_p7sisq.jpg"
file = URI.parse(url).open
Bicycle.last.photo.attach(io: file, filename: "giantII.jpg", content_type: "image/jpg")

InsurancePolicy.create!(insurer: 'XYZ Insurance', policy_number: '12345', description: 'Basic coverage', bicycle: bicycle)
InsurancePolicy.create!(insurer: 'YellowOnes Insurance', policy_number: '1654f874d', description: 'Racing coverage', bicycle: burnout)
InsurancePolicy.create!(insurer: 'Velosurance', policy_number: '1r54s87f48', description: 'Full coverage', bicycle: weekender)
InsurancePolicy.create!(insurer: 'WeCycle Insurance', policy_number: '548d3f572', description: 'Full coverage', bicycle: performance)

Maintenance.create!(date: Date.today, shop: 'Bike Fix', description: 'Tire replacement', bicycle: bicycle)
Maintenance.create!(date: "2024-11-30", shop: 'Balfes', description: '1st revision', bicycle: bicycle)
Maintenance.create!(date: "2024-12-22", shop: 'Vluption', description: 'Crank repair', bicycle: burnout)
Maintenance.create!(date: "2025-02-15", shop: 'Greenwich Bike Shop', description: '1st gear revision', bicycle: burnout)
Maintenance.create!(date: "2025-05-01", shop: 'Greenwich Bike Shop', description: '6 month revision', bicycle: bicycle)
Maintenance.create!(date: "2025-03-20", shop: 'Greenwich Bike Shop', description: 'Race Full Bike Check up', bicycle: performance)
Maintenance.create!(date: "2025-08-01", shop: 'No Stress Bike Shop', description: 'New wheel pair set up (due temporary stock shortage there is a delay and due time is for the 1st of August)', bicycle: weekender)


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
url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733404790/bicycle_rim_gbagmz.jpg"
file = URI.parse(url).open
Component.last.photo.attach(io: file, filename: "bontrager-rim.jpg", content_type: "image/jpg")


Component.create!(name: "Shifter",
                make:"Shimano",
                serial_number: "XNC 2142323151",
                description: "Altus M2010, 9-speed")
url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733404790/shifter_onz9ne.jpg"
file = URI.parse(url).open
Component.last.photo.attach(io: file, filename: "shimano-shifter.jpg", content_type: "image/jpg")

Component.create!(name: "Crank",
                make:"Trek",
                serial_number: "XNC 2142323151",
                description: "Diamant Wheel Top DCRX1 Double Crankset")
url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733409497/Shimano-FC-R9200-Dura-Ace-12-Speed-Double-Power-Meter-Chainset-fcr9200p-black_2_r8rp3a.webp"
file = URI.parse(url).open
Component.last.photo.attach(io: file, filename: "Trek-Crank.webm", content_type: "image/webm")


Component.create!(name: "29er Carbon MTB",
                make:"DCB",
                serial_number: "ty2356q",
                description: "The DCB Carbon MTB Ultralight Wheels are our lightest wheels yet still being capable for XC/Trail riding and racing. The rims are ultralight at 285g a rim for the 27mm (22id) create a ridiculously light rotating mass and the 34mm (28id) are only 310g!!")
url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733409498/giant_frame_2_a8jqk2.jpg"
file = URI.parse(url).open
Component.last.photo.attach(io: file, filename: "revolt-frame.jpg", content_type: "image/jpg")

# --------------------

Component.create!(name: "26er or 27.5 Carbon Fat",
make:"DCB",
serial_number: "rz2856qy",
description: "Our wheelset features reliable, low maintenance, and affordable Novatec hubs and DCB carbon rims for reduced rolling weight. Hand-built and tubeless ready, these wheels are a perfect match for our FT26 carbon fat frame, or are a great upgrade for you fat bike!")

# --------------------

Component.create!(name: "XCT29 Felt Doctrine Style",
make:"DCB",
serial_number: "y9xp135QR",
description: "No better place to start than with a quality and affordable carbon frame. This XCT29 frame from DIY Carbon Bikes is top of the line for price and durability. Built with triple enforced T800 Carbon, a 31.6 seat tube for wider posts and dropper posts, and equipped with a durable and low maintenance BSA threaded bottom bracket, this frame is for those that want a hardtail that takes the rougher lines.")


# --------------------

Component.create!(name: "XTR PDM9100",
make:"Shimano",
serial_number: "PDM9100",
description: "The Shimano XTR M9100S SPD MTB pedals, top of the range from the prestigious Japanese manufacturer, have been specifically designed for XC use. With a shaft length of -3 mm compared to Shimano XTR M9100 pedals to compensate for the Q-factor of bikes with Boost transmission.")


# --------------------

Component.create!(name: "REDESIGN 4",
make:"NAGO",
serial_number: "NGRDS4",
description: "The design of the NAGO R4 is innovative and aerodynamic, the weight is reduced to minimum and its 245x137mm dimensions are compact. The traditional T-shape allows a good freedom of movement, while the slightly advanced anatomical center grants a more aggressive riding position. The ergonomic semi-round shape facilitates the forward rotation of the pelvis, allowing you to effortlessly reach the handlebar.")


# --------------------

Component.create!(name: "Gel Bicycle Seat Mountain Bike",
make:"EC90",
serial_number: "P1U42EVO43",
description: "Brand new item, unworn, unopened, undamaged, in original packaging (where applicable). The packaging should be the same as that found in stores, unless the item is handmade or has been packaged by the manufacturer in a package with no printed identification or plastic bag. See the seller's listing for full details.")


# --------------------

Component.create!(name: "Cassete Deore",
make:"Shimano",
serial_number: "M5100",
description: "The Shimano M5100 11-speed cassette is ideal for mountain bikes with 1 or 2-speed cranks. It offers customized shift levels for the driver and therefore maximum cadence control on any terrain.")


# --------------------

Component.create!(name: "GEN 8 Disc Road Bicycle Frameset",
make:"SLR9",
serial_number: "tz23uibm",
description: "Material: Carbon, Fiber Toray T1000, Color: Any Black, Painting/Customize, Finish: UD Matte, Black/Glossy")


# --------------------

Component.create!(name: "UD-3K",
make:"Superlogic",
serial_number: "P1iM92ux",
description: "Glossy Carbon Bicycle Handlebar, New Drop Bar, Road Bike, 400mm, 420mm, 440mm")


Ride.create!(
  name: "Sesimbra to Setubal",
  start_lat: 38.48761,
  start_date: "2024-11-28",
  end_date: "2024-11-29",
  user: User.all[0],
  start_long: -9.113747,
  end_lat: 38.523502,
  end_long: -8.894553,
  distance: 58.0,
  start_time: "Sat, 01 Jan 2000 17:14:00.000000000 UTC +00:00",
  end_time: "Sat, 01 Jan 2000 20:14:00.000000000 UTC +00:00"
)

url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733315812/7_n0hpau.jpg"
file = URI.parse(url).open
Ride.last.photo.attach(io: file, filename: "ride1.jpg", content_type: "image/jpg")

Ride.create!(
  name: "Iron hill at High Speed",
  start_lat: 38.71731,
  start_date: "2024-11-09",
  end_date: "2024-11-09",
  user: User.all[1],
  start_long: -9.143052,
  end_lat: 38.523502,
  end_long: -8.894553,
  distance: 65.0,
  start_time: "Sat, 01 Jan 2000 12:41:00.000000000 UTC +00:00",
  end_time: "Sat, 01 Jan 2000 12:41:00.000000000 UTC +00:00"
)
url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733315808/1_hfkw9w.jpg"
file = URI.parse(url).open
Ride.last.photo.attach(io: file, filename: "ride2.jpg", content_type: "image/jpg")

Ride.create!(
  name: "Burning calories",
  start_lat: -27.574305,
  start_date: "2024-11-29",
  end_date: "2024-11-29",
  user: User.all[2],
  start_long: -48.60697,
  end_lat: 38.719364,
  end_long: -9.003544,
  distance: 45.0,
  start_time: "Sat, 01 Jan 2000 12:08:00.000000000 UTC +00:00",
  end_time: "Sat, 01 Jan 2000 15:08:00.000000000 UTC +00:00>"
  )

Ride.create!(
  name: "The longest",
  start_lat: 38.523502,
  start_date: "2024-12-07",
  end_date: "2024-12-07",
  user: User.all[3],
  start_long: -8.894553,
  end_lat: 38.95381,
  end_long: -8.98968,
  distance: 65.0,
  start_time: "Sat, 01 Jan 2000 12:05:00.000000000 UTC +00:00",
  end_time: "Sat, 01 Jan 2000 14:05:00.000000000 UTC +00:00",
)

Ride.create!(
  name: "Out to Nature",
  start_lat: 38.708294,
  start_date: "2024-12-15",
  end_date: "2024-12-15",
  user: User.all[4],
  start_long: -9.13787,
  end_lat: 38.795944,
  end_long: -9.38959,
  distance: 55.0,
  start_time: "Sat, 01 Jan 2000 10:00:00.000000000 UTC +00:00",
  end_time: "Sat, 01 Jan 2000 15:00:00.000000000 UTC +00:00>"
)

Ride.create!(
  name: "Coastal Path",
  start_lat: 38.7064,
  start_date: "Tue, 10 Dec 2024",
  end_date: "Tue, 10 Dec 2024",
  user: User.all[4],
  start_long: -9.144683,
  end_lat: 38.698032,
  end_long: -9.420665,
  distance: 45.0,
  start_time: "Sat, 01 Jan 2000 10:00:00.000000000 UTC +00:00",
  end_time: "Sat, 01 Jan 2000 15:00:00.000000000 UTC +00:00>"
)

Ride.create!(
  name: "City Tour",
  start_lat: 38.71731,
  start_date: "2024-11-26",
  end_date: "2024-11-26",
  user: User.all[0],
  start_long: -9.143052,
  end_lat: -1.45056,
  end_long: -48.4682,
  distance: 35.0,
  start_time: "Sat, 01 Jan 2000 10:30:00.000000000 UTC +00:00",
  end_time: "Sat, 01 Jan 2000 15:00:00.000000000 UTC +00:00"
)




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

 UsersRide.create!(
  user: User.all[0],
  bicycle: Bicycle.all[0],
  ride: Ride.all[1]
 )

UsersRide.create!(
  user: User.all[0],
  bicycle: Bicycle.all[0],
  ride: Ride.all[2]
 )

UsersRide.create!(
  user: User.all[0],
  bicycle: Bicycle.all[0],
  ride: Ride.all[3]
 )

UsersRide.create!(
  user: User.all[0],
  bicycle: Bicycle.all[0],
  ride: Ride.all[4]
 )


# -----
UsersRide.create!(
  user: User.all[1],
  bicycle: Bicycle.all[1],
  ride: Ride.all[0]
 )

UsersRide.create!(
  user: User.all[1],
  bicycle: Bicycle.all[1],
  ride: Ride.all[1]
 )

UsersRide.create!(
  user: User.all[1],
  bicycle: Bicycle.all[1],
  ride: Ride.all[2]
 )

UsersRide.create!(
  user: User.all[1],
  bicycle: Bicycle.all[1],
  ride: Ride.all[3]
 )

UsersRide.create!(
  user: User.all[1],
  bicycle: Bicycle.all[1],
  ride: Ride.all[4]
 )

# -----
UsersRide.create!(
  user: User.all[2],
  bicycle: Bicycle.all[2],
  ride: Ride.all[0]
 )

UsersRide.create!(
  user: User.all[2],
  bicycle: Bicycle.all[2],
  ride: Ride.all[2]
 )

UsersRide.create!(
  user: User.all[2],
  bicycle: Bicycle.all[2],
  ride: Ride.all[2]
 )

UsersRide.create!(
  user: User.all[2],
  bicycle: Bicycle.all[2],
  ride: Ride.all[3]
 )

UsersRide.create!(
  user: User.all[2],
  bicycle: Bicycle.all[2],
  ride: Ride.all[4]
 )

# -----
UsersRide.create!(
  user: User.all[3],
  bicycle: Bicycle.all[3],
  ride: Ride.all[0]
 )

UsersRide.create!(
  user: User.all[3],
  bicycle: Bicycle.all[3],
  ride: Ride.all[2]
 )

UsersRide.create!(
  user: User.all[3],
  bicycle: Bicycle.all[3],
  ride: Ride.all[2]
 )

UsersRide.create!(
  user: User.all[3],
  bicycle: Bicycle.all[3],
  ride: Ride.all[3]
 )

UsersRide.create!(
  user: User.all[3],
  bicycle: Bicycle.all[3],
  ride: Ride.all[4]
 )

# -----
UsersRide.create!(
  user: User.all[4],
  bicycle: Bicycle.all[4],
  ride: Ride.all[0]
 )

UsersRide.create!(
  user: User.all[4],
  bicycle: Bicycle.all[4],
  ride: Ride.all[2]
 )

UsersRide.create!(
  user: User.all[4],
  bicycle: Bicycle.all[4],
  ride: Ride.all[2]
 )

UsersRide.create!(
  user: User.all[4],
  bicycle: Bicycle.all[4],
  ride: Ride.all[3]
 )

UsersRide.create!(
  user: User.all[4],
  bicycle: Bicycle.all[4],
  ride: Ride.all[4]
 )

