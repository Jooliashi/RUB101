#rules:a program that randomly generates a number representing age
#the number should be between 20 and 200
#output a sentence "Teddy is xx years old!"
#input: nothing needed
#output: a string

puts "Whose age would you like to know?"
name = gets.chomp
age = rand(20...200)
name.empty? ? (puts "Teddy is #{age} years old today!") : (puts "#{name} is #{age} years old today!")

