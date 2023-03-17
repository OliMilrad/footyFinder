require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.destroy_all
Player.destroy_all
User.destroy_all

puts "creating 4 users"
user1 = User.new(email: "olga@gmail.com", password: "123456qwerty")
user1.save
user2 = User.new(email: "guido1@gmail.com", password: "123456")
user2.save
user3 = User.new(email: "lalala@gmail.com", password: "654321")
user3.save
user4 = User.new(email: "anotheremail@gmail.com", password: "ytrewq")
user4.save
puts "users created"
puts "creating 13 players"
player1 = Player.new(full_name: "Diego Maradona", position: "AM", nationality: "Argentina", location: "Argentina", height: 1.70, age:  31, last_club: "Boca Juniors", price: 100000000, user_id: user2.id)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679064304/Diego_NoBackground_l501av.png")
player1.photo.attach(io: photo, filename: "diego.png", content_type: "image/jpg")
player1.save!
player2 = Player.new(full_name: "Igor Akinfeev", position: "GK", nationality: "Russia", location: "Russia", height: 1.86, age:  25, last_club: "CSKA", price: 15000000, user_id: user2.id)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679064304/Igor_NoBackground_l1ruvy.png")
player2.photo.attach(io: photo, filename: "igor.png", content_type: "image/jpg")
player2.save!
player3 = Player.new(full_name: "Lionel Messi", position: "RW", nationality: "Argentina", location: "France", height: 1.60, age:  30, last_club: "PSG", price: 70000000, user_id: user2.id)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679065783/lionel-messi-299_480x480_x6yomt.png")
player3.photo.attach(io: photo, filename: "leo.png", content_type: "image/jpg")
player3.save!
player4 = Player.new(full_name: "Cristiano Ronaldo", position: "ST", nationality: "Portugal", location: "Saudi Arabia", height: 1.90, age:  36, last_club: "Al Nassr", price: 100, user_id: user1.id)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679064303/Cristiano_NoBackground_u0hd4x.png")
player4.photo.attach(io: photo, filename: "cr7.png", content_type: "image/jpg")
player4.save!
player5 = Player.new(full_name: "Rio Ferdinand", position: "CB", nationality: "England", location: "England", height: 1.90, age:  36, last_club: "Manchester United", price: 30000000, user_id: user1.id)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679064303/Rio_NoBackground_qd9xdk.png")
player5.photo.attach(io: photo, filename: "rio.png", content_type: "image/jpg")
player5.save!
player6 = Player.new(full_name: "Zinedine Zidane", position: "LM", nationality: "France", location: "Spain", height: 1.80, age:  22, last_club: "Real Madrid", price: 80000000, user_id: user2.id)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679064303/Zinedine_NoBackground_tv9giw.png")
player6.photo.attach(io: photo, filename: "zidane.png", content_type: "image/jpg")
player6.save!
player7 = Player.new(full_name: "Yuri Zhirkov", position: "LWB", nationality: "Russia", location: "Russia", height: 1.80, age:  38, last_club: "Spartak Tambov", price: 10000000, user_id: user1.id)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679064303/Yuri_NoBackground_udnpyy.png")
player7.photo.attach(io: photo, filename: "yuri.png", content_type: "image/jpg")
player7.save!
player8 = Player.new(full_name: "Martin Palermo", position: "CF", nationality: "Argentina", location: "Argentina", height: 1.90, age:  15, last_club: "Boca Juniors", price: 100000000, user_id: user2.id)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679064303/Martin_NoBackground_s1twfo.png")
player8.photo.attach(io: photo, filename: "martin.png", content_type: "image/jpg")
player8.save!
player9 = Player.new(full_name: "Paul Pogba", position: "DM", nationality: "France", location: "Italy", height: 1.91, age:  30, last_club: "Juventus", price: 50000000, user_id: user2.id)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679064303/Paul_NoBackground_qkqter.png")
player9.photo.attach(io: photo, filename: "paul.png", content_type: "image/jpg")
player9.save!
player10 = Player.new(full_name: "Zlatan Ibrahimovic", position: "CF", nationality: "Sweden", location: "Italy", height: 1.95, age:  41, last_club: "Milan", price: 73000000, user_id: user2.id)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679064303/Zlatan_NoBackground_tpqum9.png")
player10.photo.attach(io: photo, filename: "zlatan.png", content_type: "image/jpg")
player10.save!
player11 = Player.new(full_name: "Emiliano Martinez", position: "GK", nationality: "Argentina", location: "England", height: 1.85, age:  29, last_club: "Aston Villa", price: 85000000, user_id: user2.id)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679066419/12258.vresize.350.350.medium.72_kjplbf.png")
player11.photo.attach(io: photo, filename: "dibu.png", content_type: "image/jpg")
player11.save!
player12 = Player.new(full_name: "Diego Costa", position: "CF", nationality: "Spain", location: "England", height: 1.86, age:  34, last_club: "Wolverhampton Wanderers", price: 30000000, user_id: user2.id)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679066592/87-878557_diego-costa-hd-png-download_rghrbb.png")
player12.photo.attach(io: photo, filename: "costa.png", content_type: "image/jpg")
player12.save!
player13 = Player.new(full_name: "Neymar Jr.", position: "RW", nationality: "Brazil", location: "France", height: 1.65, age:  31, last_club: "PSG", price: 67000000, user_id: user2.id)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1679067160/neymar_png_by_flashdsg_dc10dtd-pre.png_vgvhlh.png")
player13.photo.attach(io: photo, filename: "neymar.png", content_type: "image/jpg")
player13.save!

puts "13 players created"
puts "creating 3 bookings"
booking1 = Booking.new(confirmed: true, user_id: user3.id, player_id: player1.id, date: 2023)
booking1.save
booking2 = Booking.new(confirmed: false, user_id: user3.id, player_id: player2.id, date: 2024)
booking2.save
booking3 = Booking.new(confirmed: false, user_id: user4.id, player_id: player3.id, date: 2023)
booking3.save
puts "bookings created"
