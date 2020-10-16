#rules: takes a string containing one or more words
#return the GIVEN string that contain five or more characters reversed
#consist of only letters and spaces
#space only be included if more than one word is present
#input: string
#output: string
#data:array and string

def reverse_words(sentence)
  array = sentence.split(' ')
  array.map! do |word|
    if word.length > 4
      word.reverse
    else
      word
    end
  end
  array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS