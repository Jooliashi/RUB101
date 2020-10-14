def titleize(word)
  new_word = word.split(' ')
  new_word.map! do |i|
    i.capitalize!
  end
  new_word.join(' ')
end

words = "the flintstones rock"

p titleize(words)