def fizzbuzz(number)
  if number % 15 == 0
    "fizzbuzz"
  elsif number % 3 == 0
    "fizz"
  elsif number % 5 == 0 
    "buzz"
  else
    number
  end
end

def enter_number()
  puts "Enter a number you want to analyze"
  entered_number = gets.chomp.to_i
  fizzbuzz(entered_number)
end

enter_number()