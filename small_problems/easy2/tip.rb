#rules: prompt for bil amount and tip rate; compute the tip
#display bill and total amount of the bill
#input: one positive number for bill and another one for percentage(0..100)
#output: total bill amount and tip amount

puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip_perc = gets.chomp.to_f / 100

tip = (bill * tip_perc).round(1)
total = (bill+tip).round(1)

puts "The tip is $#{sprintf("%.2f",tip)} " +\
"The toal is $#{sprintf("%.2f",total)}."