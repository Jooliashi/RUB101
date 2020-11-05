# given a string that contain lower_cased words
# and non-alphabetic characters
# write a method that returns the string with all non alph
# characters replaced by spaces
# no consecutive spaces
# input: string with many words or 0
# output: a string
# loop through the string to array
# if it's alphabetic or string, next
# if non then replace with space
# split into array
# do unique and rejoin
def replace_non_alpha(sentence)
  sentence.split('').map do |i|
    if !!i.match(/^[[:alpha:]]$/) || i == ' '
      i
    else
      ' '
    end
  end
end

def find_excess_space(sentence)
  count = 1
  location = []
  loop do
    if sentence[count] == ' ' && sentence[count-1] == ' '
      location << count
    end
    count += 1
    break if count == sentence.length
  end
  location
end

def cleanup(input)
  cleaned = replace_non_alpha(input)
  location = find_excess_space(cleaned)

  place = 0
  loop do
    cleaned[location[place]]= ''
    place += 1
    break if place == location.length
  end

  cleaned.join('')
end

p cleanup("---what's my +*& line?")

ALPHABET = ('a'..'z').to_a

def cleanup2(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

def cleanup3(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end