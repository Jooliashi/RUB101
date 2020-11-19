=begin
input: string
output: boolean
rules: true if all of the alphabetic characters inside are uppercase
=end

def uppercase?(string)
  string.chars.all? do |char|
    char.upcase == char
  end
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true