# given a string of words seperated by spaces
# a method that takes this string of words and returns a string
# where first and last letters of every word are swapped
# input:one string, every word contains at least one letter, every string will always contain at least one word
# would not contain anything else
# output: one string
# split string into array
# use each do
# use shift and pop to get first and last letter
# add that in opposite order to the remaining word

def swap(sentence)
  new_sentence = sentence.split(' ').map do |word|
    if word.length < 2
      word
    else
      first = word.slice!(0)
      last = word.slice!(-1)
      last << word << first
    end
  end
  new_sentence.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

