#split numbers into a array
#each method to match array into strings
#join into a string

def sign(input)
  case
  when input > 0
    '+'
  when input < 0
    '-'
  else
    ''
  end
end

def signed_integer_to_string(input)
  number_to_string = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
  result = ''
  sign = sign(input)
  number = input.abs

  loop do
    number, remainder = number.divmod(10)
    result.prepend(number_to_string[remainder])
    break if number == 0
  end

  sign + result
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'



