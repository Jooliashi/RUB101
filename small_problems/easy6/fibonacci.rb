# a method that takes a number that indicates the digits
# return the index of the first number that has the same number of digits
# count starting from 6
# first number =  8  second is the target index

def find_fibonacci_index_by_length(input)
  index = 1
  fibonacci = [1, 1]
  loop do
    fibonacci[index + 1] = fibonacci[index] + fibonacci[index - 1]
    index += 1
    break if fibonacci[index].to_s.length == input
  end
  index + 1
end

def find_fibonacci_index_by_length2(number)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number

    first = second
    second = fibonacci
  end

  index
end

p find_fibonacci_index_by_length2(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length2(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length2(10) == 45
p find_fibonacci_index_by_length2(100) == 476
p find_fibonacci_index_by_length2(1000) == 4782
p find_fibonacci_index_by_length2(10000) == 47847