=begin
input: number
output: number
=end

def negative(number)
  if number > 0
    number * -1
  else
    number
  end
end
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0

def negative2(number)
  number > 0 ? -number : number
end

def negative3(number)
  -number.abs
end
