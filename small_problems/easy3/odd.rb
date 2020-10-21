#a method that returns an array that contains every other element of an input array
#the values in the return list should have the odd index
#input: array
#output: array

def oddities(input_array)
  return "This is not a valid input" if input_array.is_a?(Array) == false
  new_array = []
  input_array.map.with_index do |x, i|
    if i.even?
      new_array << x
    end
  end
  new_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []