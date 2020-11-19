=begin
input: integer?
output: integer
rules: return number double unless it's a double number
algorithm:
  seperate algorithm to verify double number
=end

def twice(number)
  if double_number?(number)
    number
  else
    number * 2
  end
end

def double_number?(number)
  digits = number.digits
  digits.size.even? && digits[0, digits.size/2] == digits[digits.size/2, digits.size/2]
end


p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
