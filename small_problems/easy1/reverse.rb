#one argument, a string and return a new string with words in reverse
#input: string, if empty, return empty, what about punctuation
#output: new string

def reverse_sentence(sentence)
  reversed = []
  sentence.split(' ').each do |x|
    reversed.unshift(x)
  end
  reversed.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'