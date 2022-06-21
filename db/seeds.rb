# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create({ first_name: "Paul", last_name: "Pop", avatar_url: "https://upload.wikimedia.org/wikipedia/commons/6/62/CEVA_Logistics_New_Logo.png", email: "paulpop122@gmail.com", admin: true, gender: "male" })

ferrari = Constructor.create({ name: "Ferrari", description: "Lorem Ipsum", logo_url: "https://i.imgur.com/rx2S6SW.jpeg", cover_url: "https://i.imgur.com/rx2S6SW.jpeg", first_apparence: 1970, origins: "Italy", titles: 30 })

redbull = Constructor.create({ name: "Red Bull Racing", description: "Lorem Ipsum", logo_url: "https://i.imgur.com/rx2S6SW.jpeg", first_apparence: 2000, origins: "Austria", titles: 10 })

drivers = Driver.create([
  { first_name: "Charles", last_name: "Leclerc", avatar_url: "https://i.imgur.com/rx2S6SW.jpeg", description: "Lorem Ipsum", race_number: 16, nickname: "LEC", constructor_id: ferrari.id, birth_date: "16.10.1997", nationality: "Monegasque", height: 180 },
  { first_name: "Carlos", last_name: "Sainz", avatar_url: "https://i.imgur.com/rx2S6SW.jpeg", description: "Lorem Ipsum", race_number: 55, nickname: "SAI", constructor_id: ferrari.id, birth_date: "16.10.1997", nationality: "Monegasque", height: 180 },
  { first_name: "Max", last_name: "Verstappen", avatar_url: "https://i.imgur.com/rx2S6SW.jpeg", description: "Lorem Ipsum", race_number: 1, nickname: "VER", constructor_id: 1, birth_date: "16.10.1997", nationality: "Monegasque", height: 180 },
  { first_name: "Sergio", last_name: "Perez", avatar_url: "https://i.imgur.com/rx2S6SW.jpeg", description: "Lorem Ipsum", race_number: 11, nickname: "PER", constructor_id: 1, birth_date: "16.10.1997", nationality: "Monegasque", height: 180 },

])

sponsors = Sponsor.create([
  { constructor_id: 1, name: "Shell", logo_url: "https://i.imgur.com/rx2S6SW.jpeg" },
  { constructor_id: 1, name: "Santander", logo_url: "https://i.imgur.com/rx2S6SW.jpeg" },
  { constructor_id: 1, name: "RedBull", logo_url: "https://i.imgur.com/rx2S6SW.jpeg" },
  { constructor_id: 1, name: "Oracle", logo_url: "https://i.imgur.com/rx2S6SW.jpeg" },

])
