=begin
input: string
output: same string
rules: convert all numbers in words into integer (still string format)
data structure: use hash map words to digit strings
use string itself since same string?
algorithm:
  create constant mapping words to digits
  iterate through the hash
  each pair do search and replace in the string
    -need to ignore cases
=end

WORD_TO_DIGIT = { 'one' => '1',
                  'two' => '2',
                  'three' => '3',
                  'four' => '4',
                  'five' => '5',
                  'six' => '6',
                  'seven' => '7',
                  'eight' => '8',
                  'nine' => '9',
                }
def word_to_digit(str)
  WORD_TO_DIGIT.each do |key, value|
    str.gsub!(/\b#{key}\b/,value)
  end
  str
end

p word_to_digit('Please call me at Five Five five one two three four. Thanks.')