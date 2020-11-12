# replicate include? method for array

def include?(array, element)
  selection = array.select {|i| i == element}
  !selection.empty?
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

def include3?(array, value)
  !!array.find_index(value)
end

def include2?(array, value)
  array.each {|element| return true if value == element}
  false
end
