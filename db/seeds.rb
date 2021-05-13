puts 'Cleaning database...'

# Weight_target.destroy_all
# Smoke_target.destroy_all
User.destroy_all

# puts 'Creating categories...'


puts 'Creating users...'
User.create([
    {email: "teste1@teste.com", password: "123456"},
    {email: "teste2@teste.com", password: "123456"}
    ])
    puts User.count


puts 'finished!'
