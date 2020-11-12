=begin
input: non empty string
output: return the middle character or characters
data: array, string
algorithm:
  split the array into characters (including space)
  divide size by 2
  if its remainder is 1
    return middle number
  if remainder is 0
    return middle and middle + 1
=end

def center_of(string)
  array = string.chars
  middle = array.size / 2
  if array.size % 2 == 0
    array[middle - 1] + array[middle]
  else
    array[middle]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'