=begin
input: string
output: array
rules: return an array of all substrings
data: array
=end

def leading_substrings(string)
  list = []
  1.upto(string.size) do |count|
    list << string[0,count]
  end
  list
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    result.concat(leading_substrings(this_substring))
  end
  results
end
