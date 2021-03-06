# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rollercoaster.destroy_all
Membership.destroy_all
Amusementpark.destroy_all
User.destroy_all

# 100 users
100.times do
  User.create({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    age: rand(7..60)
  })
end

puts 'Users created'

100.times do
  Amusementpark.create({
    name: Faker::Book.title,
    city: Faker::Address.city
  })
end

puts 'Amusementparks created'

ap = Amusementpark.all

User.all.each do |u|
  rand(2..10).times do
    u.memberships.create!(amusementpark: ap.sample)
  end
end

puts 'Memberships created'

ap.each do |a|
  rand(3..10).times do
    a.rollercoasters.create!({
      name: Faker::Marketing.buzzwords,
      construction_year: rand(1900..2019)
    })
  end
end

puts 'Rollercoasters created'
