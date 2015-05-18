def basic_calc(operation, first_number, second_number)
  # puts "basic calc"
  case operation
  when "+"
    puts first_number + second_number
  when "-"
    puts first_number - second_number
  when "/"
    puts first_number / second_number
  when "*"
    puts first_number * second_number
  end
end

def advanced_calc(operation, first_number, second_number)
  case operation
  when "**"
    puts first_number ** second_number
  when "sqrt"
    puts Math.sqrt(first_number)
  end
end

puts 'Select your calculator: (a)dvanced or (b)asic?'
calc_choice = gets.chomp.downcase

if calc_choice == 'b'
  puts 'What is your first number?'
  first_number = gets.chomp.to_i
  puts 'What is your second number?'
  second_number = gets.chomp.to_i
  puts 'What operation do you want to perform? (+, -, /, *)'
  operation = gets.chomp
  basic_calc(operation, first_number, second_number)
elsif
  calc_choice == "a"
  puts 'What operation do you want to perform? (**, sqrt)'
  operation = gets.chomp
  if operation == "**"
    puts 'What is your first number?'
    first_number = gets.chomp.to_i
    puts 'What is your second number?'
    second_number = gets.chomp.to_i
    advanced_calc(operation, first_number, second_number)
  
    else operation = "sqrt"
      puts 'What number do you want to sqrt?'
      first_number = gets.chomp.to_i
      advanced_calc(operation, first_number, second_number)
  end
end

# system "clear"