require 'faker'

puts 'Cleaning database...'

User.destroy_all

puts 'Creating users...'
10.times do
    User.create(name: Faker::Name.first_name, email: Faker::Internet.email(name: :name), password: "123456")
end

User.create(name: 'Paulo', email: 'paulo@paulo.com', password: "123456", admin: true, referee: true)
User.create(name: 'Marcelo', email: 'marcelo@marcelo.com', password: "123456", admin: true, referee: true)
User.create(name: 'Bruno', email: 'bruno@gmail.com', password: "123456", admin: true, referee: true)
User.create(name: 'Bruno', email: 'brunocinelli2@gmail.com', password: "123456", admin: true, referee: true)

puts User.count

puts 'finished!'
