=begin
input: a string
output: return a new string
rules: every character should be doubled. space too
data: array, string
=end

def repeater(string)
  string.chars.each_with_object('') do |char, repeated|
    repeated << char * 2
  end
end
# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''

=begin
input: string
output: string
rules: return new string in which every consonant character is doubled
data: string, array
algorithm:
  *make a seperate method called is_consonant?
  rotate through each string char
  double if it's consonant
=end

def double_consonants(string)
  string.chars.each_with_object('') do |char, repeated|
    if is_consonant?(char)
      repeated << char * 2
    else
      repeated << char
    end
  end
end

def is_consonant?(string)
  string.downcase =~ /[a-z&&[^aeiou]]/i
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!")== "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""