# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
	course = Course.create!(title: Faker::Hacker.abbreviation)
end

20.times do
	student = Student.create!(name: Faker::Name.name, email: Faker::Internet.email, course_id: rand(1..10))
end