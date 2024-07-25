# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Makkah Hotels Data
makkah_hotels = [
  { name: 'Qasr E Saad', location: 'Kudai Misfilla Area', category: '1 Star', service: 'Shuttle Service', distance: 'Shuttle', rooms:  [
    { room_type: 'Sharing', price: 12 }, { room_type: 'Quad', price: 14 }, { room_type: 'Triple', price: 18 }, { room_type: 'Double', price: 26 }
  ]},
  { name: 'Dyar Matar', location: 'Ibrahim Khalil Road / Kudai Misfilla Area', category: '1 Star', service: 'Walking Distance', distance: '1200 m', rooms:  [
    { room_type: 'Sharing', price: 14 }, { room_type: 'Quad', price: 17 }, { room_type: 'Triple', price: 21 }, { room_type: 'Double', price: 31 }
  ]},
  { name: 'Land Premium / Lolo Touheed', location: 'Ibrahim Khalil Road / Hijra Road', category: '2 Star', service: 'Walking Distance', distance: '950 m', rooms:  [
    { room_type: 'Sharing', price: 23 }, { room_type: 'Quad', price: 25 }, { room_type: 'Triple', price: 32 }, { room_type: 'Double', price: 45 }
  ]},
  { name: 'Jawrat Majd', location: 'Hijra Road, Misfilla', category: '1 Star', service: 'Walking Distance', distance: '950 m', rooms:  [
    { room_type: 'Sharing', price: 22 }, { room_type: 'Quad', price: 23 }, { room_type: 'Triple', price: 31 }, { room_type: 'Double', price: 46 }
  ]},
  { name: 'Rushad Al Majd', location: 'Ibrahim Khalil Road / Misfilla', category: '2 Star', service: 'Walking Distance', distance: '550 m', rooms:  [
    { room_type: 'Sharing', price: 28 }, { room_type: 'Quad', price: 34 }, { room_type: 'Triple', price: 43 }, { room_type: 'Double', price: 56 }
  ]},
  { name: 'Mathar Al Jawar / Emar Zehbi', location: 'Main Hijra Road, Misfilla', category: '2 Star', service: 'Walking Distance', distance: '400 m', rooms:  [
    { room_type: 'Sharing', price: 33 }, { room_type: 'Quad', price: 40 }, { room_type: 'Triple', price: 52 }, { room_type: 'Double', price: 75 }
  ]},
  { name: 'Saif Al Majd', location: 'Hijra Road, Misfilla', category: '3 Star', service: 'Walking Distance', distance: '800 m', rooms:  [
    { room_type: 'Sharing', price: 32 }, { room_type: 'Quad', price: 39 }, { room_type: 'Triple', price: 50 }, { room_type: 'Double', price: 73 }
  ]},
  { name: 'Yasmin Al Majd', location: 'Main Ibrahim Khalil Road, Misfilla', category: '2 Star', service: 'Walking Distance', distance: '550 m', rooms:  [
    { room_type: 'Sharing', price: 41 }, { room_type: 'Quad', price: 53 }, { room_type: 'Triple', price: 78 }
  ]},
  { name: 'Nawarat Shams 3', location: 'Main Ibrahim Khalil Road, Misfilla', category: '3 Star', service: 'Walking Distance', distance: '450 m', rooms:  [
    { room_type: 'Sharing', price: 61 }, { room_type: 'Quad', price: 80 }, { room_type: 'Triple', price: 118 }
  ]}
]

# Madina Hotels Data
madina_hotels = [
  { name: 'Warda Sultana', location: 'Sultana Road, Shumalia', category: 'Economy Plus', service: 'Shuttle Service', distance: 'Shuttle', rooms:  [
    { room_type: 'Sharing', price: 14 }, { room_type: 'Quad', price: 17 }, { room_type: 'Triple', price: 21 }, { room_type: 'Double', price: 31 }
  ]},
  { name: 'Safa Tower / Rose Ward', location: 'Main Obrar Road', category: 'Economy', service: 'Walking Distance', distance: '750 m', rooms:  [
    { room_type: 'Sharing', price: 15 }, { room_type: 'Quad', price: 18 }, { room_type: 'Triple', price: 24 }, { room_type: 'Double', price: 35 }
  ]},
  { name: 'Lolo Barka', location: 'Main Road', category: 'Economy Plus', service: 'Walking Distance', distance: '550 m', rooms:  [
    { room_type: 'Sharing', price: 22 }, { room_type: 'Quad', price: 26 }, { room_type: 'Triple', price: 37 }, { room_type: 'Double', price: 68 }
  ]},
  { name: 'Manazil Wadyar Al Madina', location: 'Bab Salam (First Row Al Heak of Markazia)', category: '1 Star', service: 'Walking Distance', distance: '400 m', rooms:  [
    { room_type: 'Sharing', price: 35 }, { room_type: 'Quad', price: 40 }, { room_type: 'Triple', price: 55 }, { room_type: 'Double', price: 80 }
  ]},
  { name: 'Rou Al Kher', location: 'Bab US Salam (First Row Al Heak of Markazia)', category: '1 Star', service: 'Walking Distance', distance: '350 m', rooms:  [
    { room_type: 'Sharing', price: 35 }, { room_type: 'Quad', price: 43 }, { room_type: 'Triple', price: 58 }, { room_type: 'Double', price: 85 }
  ]},
  { name: 'Bir Al Iman', location: 'Markazia (Gate No 6 & 7)', category: '2 Star', service: 'Walking Distance', distance: '250 m', rooms:  [
    { room_type: 'Sharing', price: 41 }, { room_type: 'Quad', price: 50 }, { room_type: 'Triple', price: 75 }, { room_type: 'Double', price: 110 }
  ]},
  { name: 'Rou Taiba', location: 'Markazia (Masjid e Ghannam)', category: '2 Star', service: 'Walking Distance', distance: '100 m', rooms:  [
    { room_type: 'Sharing', price: 45 }, { room_type: 'Quad', price: 55 }, { room_type: 'Triple', price: 72 }, { room_type: 'Double', price: 105 }
  ]}
]

umrah_visas = [
  { visa_type: 'Visa with Package', price: 530 },
  { visa_type: 'Visa with Oneside Hotel', price: 535 },
  { visa_type: 'Visa with Full Transport', price: 550 },
  { visa_type: 'Only Visa', price: 510 },
  { visa_type: 'Infant Visa', price: 500 }
]

# Create Hotels and Rooms for Makkah
  makkah_hotels.each do |hotel_data|
    hotel = Hotel.create(name: hotel_data[:name], location: hotel_data[:location], distance: hotel_data[:distance], category: hotel_data[:category], service: hotel_data[:service], city: 0)
    hotel_data[:rooms].each do |room_data|
      hotel.rooms.create(room_type: room_data[:room_type], price: room_data[:price])
    end
  end

# Create Hotels and Rooms for Madina
madina_hotels.each do |hotel_data|
  hotel = Hotel.create(name: hotel_data[:name], location: hotel_data[:location], distance: hotel_data[:distance], category: hotel_data[:category], service: hotel_data[:service], city: 1)
  hotel_data[:rooms].each do |room_data|
    hotel.rooms.create(room_type: room_data[:room_type], price: room_data[:price])
  end
end

# Create Umrah Visa records
umrah_visas.each do |visa_data|
  UmrahVisa.create(visa_data)
end

puts "Seed data created successfully"
