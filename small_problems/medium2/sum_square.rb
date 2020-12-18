def sum_square_difference(n)
  numbers = (1..n).to_a
  sum_first = numbers.sum**2
  square_first = numbers.reduce(0) { |sum, i| sum + i**2 }
  sum_first - square_first
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150