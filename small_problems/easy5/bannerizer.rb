# input: a string of text
# output: 5 lines with text in the middle as if in a box
# add front and end space to the text
# copy the other lines with the same size space
def print_in_box_short(input)
  horizontal_rule = "+#{'-' * (input.size + 2)}+"
  empty_line = "|#{' ' * (input.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{input} |"
  puts empty_line
  puts horizontal_rule
end

MAXIMUM_LINE = 76
def print_in_box(input)
  lines, words = input.size.divmod(76)
  if lines == 0
    print_in_box_short(input)
  else
    horizontal_rule = "+#{'-' * (MAXIMUM_LINE + 2)}+"
    empty_line = "|#{' ' * (MAXIMUM_LINE + 2)}|"

    puts horizontal_rule
    puts empty_line
    count = 1
    message = ''
    loop do
      message = input[MAXIMUM_LINE*(count-1),MAXIMUM_LINE]
      puts "| #{message} |"
      count += 1
      break if count > lines
    end
    puts "| #{input[MAXIMUM_LINE*lines, words]}#{' '*(MAXIMUM_LINE-words)} |"
    puts empty_line
    puts horizontal_rule
  end
end

puts print_in_box('Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.')
