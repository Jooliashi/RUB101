# combine two arrays elements in alternation
# input: array with same number of elements
# output: new array

def interleave(array_1, array_2)
  count = 0
  new_array = []
  loop do
    new_array << array_1[count] << array_2[count]
    count += 1
    break if count == array_1.length
  end
  new_array
end

def interleave2(array_1, array_2)
  array_1.zip(array_2).flatten
end

p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
