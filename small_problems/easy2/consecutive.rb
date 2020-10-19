#rules: prompt user to enter an integer greater than 0
#prompt user to determine the sum or product of all numbers between 1 and that integer
#input:one integer and one string
#output: string
#a: puts to ask user to enter an integer
#number = user input
#puts to ask user to sum or product
#calc = user input
#turn number into an array from 1 up to entered integer
#use collection reduce to sum if sum
#use collection reduce to times if times
#output statement

puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i
puts "Enter 's' to computer the sum, 'p' to compute the product"
calc = gets.chomp.downcase

list = []
count = 1
loop do
  list << count
  count += 1
  break if count > number
end

case calc
when 's'
  sum = list.reduce {|sum, number| sum + number}
  puts "The sum of integers between 1 and #{list.length} is #{sum}"
when 'p'
  product = list.reduce {|product, number| product * number}
  puts "The product of integers between 1 and #{list.length} is #{product}"
else
  puts "Oops. Unknown operation."
end


