puts 'Cleaning database...'

# Weight_target.destroy_all
# Smoke_target.destroy_all
User.destroy_all

# puts 'Creating categories...'


puts 'Creating users...'
User.create([
    {name: email: "teste2@teste.com", password: "123456"}
    puts "numero de users"
    puts User.count

puts 'finished!'
