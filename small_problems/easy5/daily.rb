# method that takes a string
# returns a NEW string
# contains the value of the original string
# with all consecutive duplicated characters collapsed into a single one
# input: string
# output: new string
# use chars on string

def crunch(input)
  clean = ''
  input.chars do |i|
    clean << i unless clean[-1] == i
  end
  clean
end
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''