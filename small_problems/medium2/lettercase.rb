=begin
question: does space count?
algo:
  split the string into characters in an array
  count the number of characters that s downcase upcase or neither
  add all characters to a total
  create a hash and save percentage to the hash

=end
require 'pry'
def letter_percentages(str)
  total = {lowercase: 0, uppercase: 0, neither: 0}
  str.chars.each do |char|
    case
    when char =~ /[A-Z]/
      total[:uppercase] += 1
    when char =~ /[a-z]/
      total[:lowercase] += 1
    else
      total[:neither] += 1
    end
  end
  total_number = str.length
  total.each do |char, number|
    total[char] = sprintf('%.2f', ((number / total_number.to_f) * 100))
  end
  total
end
p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef')
p letter_percentages('123')
p letter_percentages('abcdefGHI')

def letter_percentages2(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  percentages = { lowercase: [], uppercase: [], neither:[] }
  characters = string.chars
  length = string.length

  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/}

