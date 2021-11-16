# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

5.times do 
  c = City.create( 
    name: Faker::WorldCup.city
  )
end

5.times do 
  d = Dog.create(
    name: Faker::Name.female_first_name,
    city: City.all.sample
  )
end

5.times do 
  ds = Dogsitter.create(
    name: Faker::Name.male_first_name,
    city: City.all.sample
  )
end

5.times do
  s = Stroll.create(
    date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
    dog: Dog.all.sample,
    dogsitter: Dogsitter.all.sample
  )
end

puts "%" * 30

puts "Database filled !"