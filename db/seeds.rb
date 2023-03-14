require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.new(email: "olga@gmail.com", password: "123456qwerty")
user1.save
user2 = User.new(email: "guido@gmail.com", password: "123456")
user2.save
user3 = User.new(email: "lalala@gmail.com", password: "654321")
user3.save
user4 = User.new(email: "anotheremail@gmail.com", password: "ytrewq")
user4.save

player1 = Player.new(full_name: "Diego Maradona", position: "AM", nationality: "Argentina", location: "Argentina", height: 1.70, age:  31, last_club: "Boca Juniors", price: 100000000, user_id: 1)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1678802665/qerbgdkgx3pqjnf93tjs.jpg")
player1.photo.attach(io: photo, filename: "diego.jpg", content_type: "image/jpg")
player1.save!
player2 = Player.new(full_name: "Igor Akinfeev", position: "GK", nationality: "Russia", location: "Russia", height: 1.86, age:  25, last_club: "CSKA", price: 15000000, user_id: 2)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1678802783/tdy9zdzynwy29qrgxgvm.jpg")
player2.photo.attach(io: photo, filename: "igor.jpg", content_type: "image/jpg")
player2.save!
player3 = Player.new(full_name: "Lionel Messi", position: "RW", nationality: "Argentina", location: "France", height: 1.60, age:  30, last_club: "PSG", price: 70000000, user_id: 2)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1678802852/o1bkmr0kklnn6odku0ae.jpg")
player3.photo.attach(io: photo, filename: "leo.jpg", content_type: "image/jpg")
player3.save!
player4 = Player.new(full_name: "Cristiano Ronaldo", position: "ST", nationality: "Portugal", location: "Saudi Arabia", height: 1.90, age:  36, last_club: "Al Nassr", price: 100, user_id: 1)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1678802978/ivo4lelto2uctf9ja6qz.webp")
player4.photo.attach(io: photo, filename: "cr7.jpg", content_type: "image/jpg")
player4.save!
player5 = Player.new(full_name: "Rio Ferdinand", position: "CB", nationality: "England", location: "England", height: 1.90, age:  36, last_club: "Manchester United", price: 30000000, user_id: 1)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1678803045/wekj9fzobgtp65ck7izr.jpg")
player5.photo.attach(io: photo, filename: "rio.jpg", content_type: "image/jpg")
player5.save!
player6 = Player.new(full_name: "Zinedine Zidane", position: "LM", nationality: "France", location: "Spain", height: 1.80, age:  22, last_club: "Real Madrid", price: 80000000, user_id: 2)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1678803109/g8tw3j87l8dkvy2cizia.jpg")
player6.photo.attach(io: photo, filename: "zidane.jpg", content_type: "image/jpg")
player6.save!
player7 = Player.new(full_name: "Yuri Zhirkov", position: "LWB", nationality: "Russia", location: "Russia", height: 1.80, age:  38, last_club: "Spartak Tambov", price: 10000000, user_id: 1)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1678803312/hbgiwaqdbqehsbdn8ztq.jpg")
player7.photo.attach(io: photo, filename: "yuri.jpg", content_type: "image/jpg")
player7.save!
player8 = Player.new(full_name: "Martin Palermo", position: "CF", nationality: "Argentina", location: "Argentina", height: 1.90, age:  15, last_club: "Boca Juniors", price: 100000000, user_id: 2)
photo = URI.open("https://res.cloudinary.com/dmn9i4cwm/image/upload/v1678803373/konjcweddhrof2ggb2ht.jpg")
player8.photo.attach(io: photo, filename: "martin.jpg", content_type: "image/jpg")
player8.save!

booking1 = Booking.new(confirmed: true, user_id: 3, player_id: 3, date: "2023")
booking1.save
booking2 = Booking.new(confirmed: false, user_id: 4, player_id: 4, date: "2024")
booking2.save
booking3 = Booking.new(confirmed: false, user_id: 4, player_id: 6, date: "2023")
booking3.save
