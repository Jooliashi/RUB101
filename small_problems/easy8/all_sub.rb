=begin
input: string
output: array
rules: return a list of all substrings; need to be arranged by position
when position is the same, they are ordered by length
algorithm:
  set list to []
  set count to 0
  first loop to get all the substring starting from first letter
  add those to the list first
  then increase the starting position
  so on so forth
=end

def substrings(string)
  list = []
  start = 0
  loop do
    1.upto(string.size - start) do |count|
      list << string[start, count]
    end
    start += 1
    break if start == string.size
  end
  list
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
