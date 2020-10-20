#prompt 6 times of 6 numbers from user (integer or float?)
#verify if the 6th number appeared before
#input: numbers
#output: statement string
#create an empty array
#prompt user input for number
#verify if it's integer
#repeat for 6 times
#search 6th integer in the array

def is_a_integer?(input)
  input.to_i.to_s == input
end

def get_number(count)
  number = 0
  loop do
    puts "Please input #{count}th number:"
    number = gets.chomp
    break if is_a_integer?(number)
    puts "This is not a valid number"
  end
  number
end

numbers = []
count = 1
loop do
  numbers << get_number(count)
  count += 1
  break if count > 5
end

sixth_number = get_number(count)
if numbers.include?(sixth_number)
  puts "The number #{sixth_number} appears in #{numbers}"
else
  puts "The number #{sixth_number} does not appear in #{numbers}"
end


