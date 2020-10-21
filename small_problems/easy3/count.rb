#prompt user for an input of a word or multiple words
#give back the number of characters
#space should not be counted
#input: a string
#output: an integer

print "Please write word or multiple words:"

answer = gets.chomp

puts "There are #{answer.split.join.length} characters in \"#{answer}\"."

