#rules, one positive integer and returns sum of its digits
#input: one positive integer
#output: one positive integer

def sum(number)
  numbers= number.to_s.split('').map {|i| i.to_i}.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45