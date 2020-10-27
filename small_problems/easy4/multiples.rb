# method that searches for all multiples lie between 1 and some other number
# compute the sum
# input: an integer greater than 1
# output: one integer
# input argument integer
# obtain an array of multiples of 3s that's smaller/equal to the integer
# do the same for multiples of 5s
# add the sums of the two arrays

def multisum(input)
  (multi(input, 3) + multi(input, 5)).uniq.sum
end

def multi(number, factor)
  count = 1
  multi = []
  loop do
    current_number = count * factor
    break if current_number > number
    multi << current_number
    count += 1
  end
  multi
end

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum_inject(max_value)
  (1..max_value).reduce(0) do |sum, n|
  if multiple?(n, 3) || multiple?(n, 5)
    sum += n
  end
  sum
  end
end

p multisum_inject(1000)
