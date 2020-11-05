[[1,2] , [3,4]].map do |arr|
  #method call map on the outer array, no side effect
  #return new array [1,3], it's not used but shown
  puts arr.first
  #1-3, block execution on each sub_array, no side effects
  # return value is 1 and 3, used by map for transformation
  #2, first is method call that return value used by puts
  #2, puts is method call that outputs a string representation of an integer
  #2, return value is nil
  #3, method call that returns 1,3 and the value is used to determine return value of the block
  arr.first
end

my_arr = [[18 , 7], [3 , 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
# 14, variable assignment, object n/a
# no side effects, return value is the original array
# return value used for new variable
# 14, method call on outer array, no side effect
# return [3,12], not used
# 15-20, block on each sub array no side effect
# return each sub-array, not used
# 15, method call on sub array, no side effect
# return sub array, return value for outer block
# 16-19, block on sub array, no side effect
# return nil, not used
# 16 conditional, for element of the sub array. no side effect
# return nil, used to determine the value of inner block
# 17 puts method call, puts nubmer bigger than 5
# output string, return nil, used for return value of the block

[[1 , 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# 37, method call map on array, no side effects
# return new array[[2,4],[6,8]], not used
# 37-41, block execution, no side effects
# return [[2,4],[6,8]], used by map for transformation
# 38, method call map on sub array, no side effects
# return [2,4] and [6,8], used as value for outer block
# 28-40, inner execution, no side effects
# it's on the each element in the sub array, return value is used by inner map transformation
# 39, method call * on each element, no side effects
# return an integer, used by inner block as return

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end

# 54, method call select on array, return value not used and no side effects
# method all? on each sub hash, return true/false, used to determine the return of select
# comparison, return is used to determine return of inner block

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.any? do |key, value|
    value[0] == key.to_s
  end
end

arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]
arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end

[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item
      item > 13
    else
      item.size < 6
    end
  end
end

[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
# [[1], [2], [3], [4]], [['a'], ['b'], ['c']] 2 elements
  element1.each do |element2|
    # [1], [2], [3], [4], ['a'], ['b'], ['c']
    element2.partition do |element3|
      element3.size > 0
    end
  end
end

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  #[[1, 2], [3, 4]], [5, 6]
  arr.map do |el|
    # [1, 2], [3, 4]
    if el.to_s.size == 1
      el + 1
    else
      el.map do |n|
        n + 1
      end
    end
  end
end

