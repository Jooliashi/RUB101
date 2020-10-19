#rules:ask for length and width of a room
#display the room's area in both square meters and square feet
#input: two positive numbers (empty? 0?)
#output: two positive numbers
#algorithm: puts please enter the length
#length = user input to float
#ask for width of the room in meters
#width = user input to float
#area_sq_meter = length * width
#area_sq_feet = length in feet * width in feet
#output statement
SQFEET_TO_SQINCH = 144
SQFEET_TO_SQCENTIMETER = 929.09
puts "Enter the length of the room in feet:"
length = gets.chomp.to_f
puts "Enter the width of the room in feet:"
width = gets.chomp.to_f
area_feet = (length * width).round(2)
area_inch = (length * width*SQFEET_TO_SQINCH).round(2)
area_centimeter = (length * width*SQFEET_TO_SQCENTIMETER).round(2)
puts "The area of the room is #{area_feet} square feet " +\
"(#{area_inch} square inches, #{area_centimeter} square centimeters)."