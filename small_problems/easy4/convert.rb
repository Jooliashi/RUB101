#convert a string of digits to an integer
#input: string
#output: integer

def string_to_integer(input)
  string_to_number = {'1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    '10' => 10,
    '0' => 0}

  input.split('').inject(0) do |digits, i|
    string_to_number[i] + digits*10
  end
end


def hexadecimal_to_integer(input)
  string_to_number = { '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    'A' => 10,
    'B' => 11,
    'C' => 12,
    'D' => 13,
    'E' => 14,
    'F' => 15,
    'a' => 10,
    'b' => 11,
    'c' => 12,
    'd' => 13,
    'e' => 14,
    'f' => 15}

  input.split('').inject(0) do |digits, i|
    string_to_number[i] + digits*16
  end
end


def string_to_signed_integer(input)
  number = input.split('')
  if number.include?('-')
    number.delete("-")
    string_to_integer(number) * (-1)
  else
    number.delete('+')
    string_to_integer(number)
  end
end



def string_to_signed_integer_test(string)
  x = string.delete('-').delete('+')
  p string
  digits = string_to_integer(x)
  if string[0] == '-'
     digits * -1
  else
    digits
  end
end

p string_to_signed_integer_test('4321') == 4321
p string_to_signed_integer_test('-570') == -570
p string_to_signed_integer_test('+100') == 100