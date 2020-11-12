# takes an array, reverse its elements
# mutate the array

def reverse!(arr)
  return [] if arr.empty?
  count = 0
  loop do
    arr.insert(count,arr.pop)
    count += 1
    break if count == arr.length
  end
  arr
end

def reverse!2(array)
  left_index = 0
  right_indedx = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_indedx], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []