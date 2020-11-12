=begin
input: string
output: array
rules: palindromic strings - case matters
data: array, string
algorithm:
  find all the substrings of a string - previous method
  determine if the substring is palindromic - seperate method
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

def palindrome?(string)
  string.reverse == string && string.size > 1
end

def palindromes(string)
  string = string.delete("^a-zA-Z").downcase
  substrings = substrings(string)
  substrings.each_with_object([]) do |substring, list|
    list << substring if palindrome?(substring)
  end
end






