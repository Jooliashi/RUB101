#rules, takes one argument (positive integer), return a list of digits
#input, number (if empty? if wrong input?)
#output, array of digits
#data structure, using collection each on string

def digit_list(number)
  list = []
  number.to_s.each_char do |i|
    list << i.to_i
  end
  list
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true