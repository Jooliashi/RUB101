=begin
input: two numbers
output: list of strings (print?)
algorithm:
  puts the numbers in to the array
  initiate an empty string
  iterate through the array
  use three conditions to output three types
  attach the types to the string
=end
require 'pry'
require 'pry-byebug'

def fizzbuzz(number1, number2)
  numbers = (number1..number2).to_a
  result = []
  numbers.each do |number|
    result << fizzbuzz_value(number)
  end

  puts result.join(', ')
end

def fizzbuzz_value(number)
  binding.pry
  case
  when number % 15 == 0
    'FizzBuzz'
  when number % 3 == 0
    'Fizz'
  when number % 5 == 0
    'Buzz'
  else
    number
  end
end

fizzbuzz(1, 15)
fizzbuzz(1,1)


