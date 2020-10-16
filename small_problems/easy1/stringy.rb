#one argument, positive integer, return a string of alternating 1 and 0
#always start with 1
#length of the string should match with the given integer
#input: positive integer
#output: string

def stringy(number)
  count = 1
  string = ''
  loop do
    if count.odd?
      string << '1'
    else
      string << '0'
    end
    count += 1
    break if count > number
  end
  string
end

def stringy_reverse(size, first)
  numbers = []

  if first == 0
    size.times do |index|
      number = index.even? ? 0 : 1
      numbers << number
    end
  else
    size.times do |index|
      number = index.even? ? 1 : 0
      numbers << number
    end
  end

  numbers.join
end



puts stringy(6) == '101010'
puts stringy_reverse(6, 0) == '010101'