# rules, two argumetns, one string and one positive integer
# prints the string as many times as integer indicates
# inputs: a string and a positive integer (warning if incorrect input)
# output, rows of strings, return should be nil

def repeat(sentence, number)
  if (sentence.is_a? String) && (number.is_a? Integer)
    number.times {puts sentence}
  else
    puts "one of your input is wrong"
  end
end

repeat('Hello', 3)
repeat(3, 3)