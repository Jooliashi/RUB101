#create a method
#takes two arguments
#multiplies them together and returns the result
#input: two numbers, validate numeric?
#output: one number

def is_numeric?(input)
  input.is_a? Numeric
end

def multiply(num1, num2)
  if is_numeric?(num1) && is_numeric?(num2)
    num1*num2
  else
    "Your input is invalid"
  end
end

def square(num)
  multiply(num,num)
end

def power_to_n(num, power)
  count = 1
  product = num
  loop do
    product = multiply(product,num)
    count += 1
    break if count == power
  end
  product
end


p power_to_n(3,3)