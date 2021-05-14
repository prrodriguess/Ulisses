require 'faker'

puts 'Cleaning database...'

# Weight_target.destroy_all
# Smoke_target.destroy_all
User.destroy_all

# puts 'Creating categories...'


puts 'Creating users...'
100.times do {
    User.create([
    {name: Faker::Name.first_name, email: Faker::Internet.email(name: :name), password: "123456"}])}
end
puts User.count

puts 'finished!'
