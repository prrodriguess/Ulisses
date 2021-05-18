require 'faker'

puts 'Cleaning database...'

User.destroy_all

puts 'Creating users...'
10.times do
    User.create(name: Faker::Name.first_name, email: Faker::Internet.email(name: :name), password: "123456")
end
puts User.count

puts 'finished!'
