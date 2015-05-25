require 'pry'
require_relative 'brokerage'
require_relative 'client'
require_relative 'stock'

def menu
  puts `clear`
  puts '*** GASE ***'
  puts '1 - Create a client'
  puts '2 - Create a portfolio'
  puts '3 - Purchase Stocks'
  puts '4 - Sell Stocks'
  puts '5 - List all clients and their balances'
  puts "6 - List a client's portfolios and associated values"
  puts "7 - List all stocks in a portfolio and associated values"
  puts 'q - Quit program'
  print "--> "
  gets.chomp.downcase
end

response = menu
while response.upcase != 'Q'
  case response
  when '1'
    puts "The following animals are in the shelter: "
    # puts shelter.display_animals
    # puts "Enter any key to continue"
    # gets
  when '2'
    puts "The following clients are in the shelter: "
    # puts shelter.display_clients
    # puts "Enter any key to continue"
    # gets
  when '3'
    print "Name: "
    name = gets.chomp
    # print "Age: "
    # age = gets.chomp.to_i
    # print "Gender: "
    # gender = gets.chomp
    # print "Species: "
    # species = gets.chomp
    # print "Toys: "
    # toys = gets.chomp.split
    # #create a new animal object, remember we are instantiating with an empty toys array, so we have to add the toys later; 
    # animal = Animal.new({
    #   name: name,
    #   age: age,
    #   gender: gender,
    #   species: species
    #   })  
    #Add the animal into the shelter
    # shelter.animals[animal.name] = animal
    #Add the toys into the animals toys array
    # shelter.animals[animal.name].toys = toys
  when '4'
    print "Name: "
    # name = gets.chomp
    # print "Age: "
    # age = gets.chomp.to_i
    # print "Criminal record (y)es (n)o: "
    # criminal_record = (gets.chomp == "y")
    # print "Number of kids: "
    # num_kids = gets.chomp.to_i
    # person = Person.new({
    #   name: name,
    #   age: age,
    #   criminal_record: criminal_record,
    #   num_kids: num_kids
    #   })
    # #Adding the client to the shelter
    # shelter.clients[person.name] = person
    # puts "#{person.name} was added to the shelter"
    # puts "Enter any key to continue"
    # gets
  when '5' #Adopt and animal
    puts "Choose an animal"
    # puts shelter.display_animals
    # animal = gets.chomp
    # puts "Choose a client"
    # puts shelter.display_clients
    # client = gets.chomp
    # shelter.adopt(client, animal)
    # puts "#{client} has adopted #{animal}"
    # puts "Enter any key to continue"
    # gets
  when '6' #Put an animal up for adoption
    puts "Choose a client: "
    # puts shelter.display_clients
    # client = gets.chomp
    # puts "Choose a pet: "
    # puts "#{shelter.clients[client].pets.keys.join(', ')}"
    # animal = gets.chomp
    # shelter.return_animal(client, animal)
    # puts "#{client} is a bad pet owner, #{animal} is now up for adoption"
  when '7' #Put an animal up for adoption
  puts "Choose a client: "
    # puts shelter.display_clients
    # client = gets.chomp
    # puts "Choose a pet: "
    # puts "#{shelter.clients[client].pets.keys.join(', ')}"
    # animal = gets.chomp
    # shelter.return_animal(client, animal)
    # puts "#{client} is a bad pet owner, #{animal} is now up for adoption"
  end
  response = menu
end