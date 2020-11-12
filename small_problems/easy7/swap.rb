=begin
input: string
output: new string
rules: every uppercase letter is turned lower case and vice versa
data: string
algo:
  iterate each character
  check if it's uppercase or lower
  change into upper or lower on different conditions, or unchanged
=end

def swapcase(string)
  changed = string.chars.map do |char|
    case
    when char =~ /[a-z]/
      char.upcase
    when char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  changed.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'