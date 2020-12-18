=begin
input: string
output: boolean
data: array, string
algorithm:
  use the word match
=end

BLOCK = [['B','O'], ['X', 'K'], ['D','Q'], ['C','P'], ['N','A'],
         ['G','T'], ['R','E'],['F','S'], ['J','W'], ['H','U'],
         ['V','I'], ['L', 'Y'], ['Z', 'M']]
def block_word?(word)
  !BLOCK.any? do |a, b|
    word.upcase.match?(a) && word.upcase.match?(b)
  end
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true