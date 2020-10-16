#rules: take an array with integers (positive and not empty) and returns the average of all numbers
#input: array
#output: integer

def average(array)
  array.sum / array.length
end
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

def average_f(array)
  sum = array.reduce {|sum, number| sum + number}
  sum.fdiv(array.count)
end

puts average_f([1, 5, 87, 45, 8, 8])