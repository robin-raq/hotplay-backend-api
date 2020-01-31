# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Room.destroy_all

Message.destroy_all
UserRoom.destroy_all

user1 = User.create(username:"Raq", password: "pass123", image_url: "https://img.favpng.com/4/18/4/pikachu-squirtle-charmander-bulbasaur-portable-network-graphics-png-favpng-X8US54QkFszsgpZDsCKwb3u0L.jpg")

user2 = User.create(username:"Hope", password: "pass456", image_url: "https://www.drawingtutorials101.com/drawing-tutorials/Anime-and-Manga/Pokemon/ducklett/how-to-draw-Ducklett-from-Pokemon-step-0.png")


room1 = Room.create(name: "#grime")
room2 = Room.create(name: "#techno")

user_room1 = UserRoom.create(room: room1, user: user1)
user_room2 = UserRoom.create(room: room1, user: user2)
user_room3 = UserRoom.create(room: room2, user: user2)
user_room4 = UserRoom.create(room: room2, user: user1)

message1 = Message.create(body: "hi I love grime so much", room: room1, user: user2)
message2 = Message.create(body: "me too!",room: room1, user: user1)
message3 = Message.create(body: "when did you first learn about the genre?", room: room1, user: user1 )
