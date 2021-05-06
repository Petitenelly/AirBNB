# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'faker'
10.times do
  dog = Dog.create!(first_name: Faker::Name.first_name)
end
puts "10 dogs ont été crées"


10.times do
  dog_sitter = DogSitter.create!(first_name: Faker::Name.first_name)
end
puts "10 dogsitters ont été crées"


10.times do
  city = City.create!(city: Faker::Address.city)
end
puts "10 villes ont été crées"