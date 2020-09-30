require 'pry'

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.size != 4
    false
  elsif
    while dot_separated_words.size > 0
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
    end
    true
  end
end

puts dot_separated_ip_address?("10.4.5.11")