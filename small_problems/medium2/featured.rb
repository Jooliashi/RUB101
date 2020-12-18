=begin
input: integer positive?
output: integer
data: number
algorithm:
  starting with lowest multiple of 7 bigger than given number
  loop through each multiple
    break if the number is odd and has no duplicate of digits
    break if given number is bigger than 10 digits
=end
require 'pry'
def no_duplicate?(number)
  number.digits.uniq == number.digits
end

def featured(number)
  count = number / 7 + 1
  featured_number = 0
  loop do
    featured_number = count * 7
    return "No possible number" if featured_number > 9876543210
    break if featured_number.odd? && no_duplicate?(featured_number)
    count += 1
  end
  featured_number
end


p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There

