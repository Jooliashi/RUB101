# take a string with one or more space seperated words
# return a hash that shows the number of words of different sizes
# words consist of any string of characters that do not include space
# input: string
# output: hash
# split strings into arrays with ' '
# loop through each element with hash set up outer
ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a
def delete_non_words(input)
  clean = ''
  input.chars.each do |i|
    if ALPHABET.include?(i)
      clean << i
    end
  end
  clean
end

def word_sizes(input)
  size_hash = {}
  input.split(' ').each do |i|
    i = delete_non_words(i)
    if size_hash.has_key?(i.length)
      size_hash[i.length] += 1
    else
      size_hash[i.length] = 1
    end
  end
  size_hash
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

def word_sizes2(word_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end
