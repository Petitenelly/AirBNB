# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dogsitter.destroy_all
City.destroy_all
Dog.destroy_all
Stroll.destroy_all
10.times do

    c = City.create(name: Faker::Address.city)
    ds = Dogsitter.create(name: Faker::Name.name, city: c)
    d = Dog.create(name: Faker::Name.name, address: Faker::Address.street_address, city: c)
    s = Stroll.new(date: Faker::Date.forward(days: 23))
    s.dogsitter = ds
    s.dog = d
    s.save
  end

