#takes an array number, returns an array with the same number of elements
#but each element has the running total
#input: array (empty?numbers only?)
#output: array

def running_total(input)
  run = []
  input.reduce(0) do |sum, number|
    sum += number
    run << sum
    sum
  end
  run
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
