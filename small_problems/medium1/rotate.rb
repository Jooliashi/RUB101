def rotate_array(arr)
  new_arr = arr[1..-1].each_with_object([]) do |element, new_arr|
              new_arr << element
            end
  new_arr << arr[0]
end


# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]

def rotate_string(str)
  rotate_array(str.split('')).join
end

def rotate_integer(int)
  rotate_array(int.digits.reverse).join.to_i
end

# p rotate_string('735291')
# p rotate_integer(735291)

=begin
input: integer bigger than zero?
output: new integer?
data: array, integer
algorithm:
  slice the number into two parts at the n digits
  rotate the second part
  add two parts together
=end

def rotate_rightmost_digits(number, position)
  number = number.digits.reverse
  new_number = number[0...-position] + rotate_array(number[-position..-1])
  new_number.join.to_i
end


# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

=begin
algorithm for max_rotation:
1. use the rotate_rightmost_digits method
2. first rotate to the left, count the rotation as n which equals to n- 1
3. slice(exclude) the n digit
n = n - 1
4. go back to number two
5. stop when n ==  1
=end

def max_rotation(number)
  rotation = number.digits.size
  rotation.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

=begin
algorithm:
  turn number into an array of its digits
  create a new empty array for the new
  rotation = 1
  use a loop
  move the first digit to the last
  take/remove the current first digit to the new
  pass the changed number to next loop
  break when rotation = size of array - 1
=end

def max_rotation2(number)
  number = number.to_s.chars
  new_num = ''
  (number.size - 1).times do
    number.append(number[0]).delete_at(0)
    new_num << number[0]
    number.delete_at(0)
  end
    new_num << number.first
    new_num.to_i
end

p max_rotation2(735291) == 321579
p max_rotation2(3) == 3
p max_rotation2(35) == 53
p max_rotation2(105) == 15 # the leading zero gets dropped
p max_rotation2(8_703_529_146) == 7_321_609_845
