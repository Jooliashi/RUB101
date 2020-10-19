#prompt user for name
#greet the user in the case of name, and case of name!
#input: string (invalid? empty?)
#output: string

puts "What's your name?"
name = gets.chomp!
case
when name[-1] == '!'
  puts "HELLO #{name.chop!.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end
