def multiply_all_pairs(array_1, array_2)
  new_array = []
  array_1.each do |first|
    array_2.each do |second|
      new_array << first * second
    end
  end
  new_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

def multiply_all_pairs2(array_1, array_2)
  array_1.product(array_2).map {|num1, num2| num1 * num2}.sort

end
p multiply_all_pairs2([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
