#write a method that RETURNS TRUE
#if its integer argument is palindromic
#input: integer (negative? need to valid integer)
#output: boolean

def palindromic_number?(input)
  return "input is invalid" if input.is_a?(Integer) == false
  input.to_s.reverse.to_i == input
end


def palindromic_numbe?(int)
  sprintf('0%o', int).reverse == sprintf('0%o', int)
end

p palindromic_numbe?(010)