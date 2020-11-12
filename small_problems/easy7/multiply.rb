def multiply_list(array_1, array_2)
  count = 0
  new_array = []
  loop do
    new_array << array_1[count] * array_2[count]
    count += 1
    break if count == array_1.size
  end
  new_array
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list2(array_1, array_2)
  array_1.zip(array_2).map {|x, y| x * y}
end
p multiply_list2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

