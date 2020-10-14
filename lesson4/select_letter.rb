def select_letter(sentence, letter)
  selected = ''
  counter = 0

  loop do
    break if counter == sentence.size

    current_letter = sentence[counter]
    selected << current_letter if current_letter == letter

    counter += 1
  end

  selected
end

question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a').size
p select_letter(question, 't').size
p select_letter(question, 'z').size