=begin
input: string
output: new string
RULES: new string will return original string with first character of every word capitalized
questions: non alphabetic words?
data: string, array
algo:
  split string into array of words
  capitalize the first word
  join back the array
=end

def word_cap(string)
  capped = string.split(' ').map(&:capitalize)
  capped.join(' ')
end
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'