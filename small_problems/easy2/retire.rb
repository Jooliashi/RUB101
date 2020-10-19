#rules:prompt for user to enter their age and age of retirement
#reply the year they retire
#input:two positive integers (empty? invalid?)
#output: two strings
current_year = Time.now.year
puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i
left_year = retire_age - age
retire_year = current_year + left_year

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{left_year} years to go!"
