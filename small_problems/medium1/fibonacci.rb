def fibonacci_last(n)
  return 1 if n <= 2
  numbers = [1,1]
  count = 2
  loop do
    numbers[count] = numbers[count-1] + numbers[count-2]
    count += 1
    break if count == n
  end
  numbers.last.digits.reverse.last
end


def fibonacci_last2(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last.to_s[-1].to_i
end

def fibonacci_last_refactored(nth)
  nth % 60 == 0 ? 0 : fibonacci_last2(nth % 60)
end

puts fibonacci_last_refactored(123_456_789_987_745) # -> 5



