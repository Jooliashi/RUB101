=begin
input: an array of numbers
output: sum of the sums of each leading subsequence
data: array, integer
algorithm:
  set sum to zero
  count to zero
  loop through the count
  slice the array from 1 to count
  sum the array integer and add to sum outside
=end

def sum_of_sums(array)
  sum = 0
  count = 1
  loop do
    sum += array[0,count].sum
    count += 1
    break if count > array.size
  end
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

def sum_of_sums2(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end
