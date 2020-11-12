=begin
input: array of integers
output: float
rules: multiplies all the numbers in the array and divide by number of entries
data: array, integer
algo:
  find the multiplication of the numbers
  divide by size of the array
  format to 3 decimal
=end

def show_multiplicative_average(array)
  product = array.reduce(1) do |p, num|
    num * p
  end
  average = format('%.3f', product.to_f / array.size)
  "The result is #{average}."
end
p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667