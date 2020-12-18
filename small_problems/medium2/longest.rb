=begin
input: a file that includes texts
output: print (string) the longest sentence in the file and the number of words (string statement)
data: array, string
rules: the sentence should be ended with period, ! or ?
question: what if there are multiple sentences with the same number of words
any sequence of character that seperated by space or sentence ending should be treated as a word
algorithm:
  input the file as argument
  read file
  split into array seperated by sentence enders
  reiterate through each sentence and then split the sentence into sub array of words
  count the number of words
  if it has the most words, assign the sentence into a seperate variable
  output the sentence and its number of words
=end
require 'pry'
def longest_sentence(file_name)
  text = File.open(file_name).read
  sentences = text.split(/[.!?]/)
  sentences.map! { |sentence| sentence.split(' ')}
  number_of_words = sentences.map {|sentence| sentence.size}.sort.last
  longest = sentences.select {|sentence| sentence.size == number_of_words}

  puts "The longest sentence is\n\n #{longest[0].join(' ')}\n\n It has #{longest[0].size} words."
  if longest.size > 1
    longest[1..-1].each do |sentence|
      puts "the longest sentence is also \n\n #{sentence.join(' ')}\n\n It has #{sentence.size} words."
    end
  end
  # "The longest sentence is\n\n #{longest.join(' ')}\n\n It has #{longest.size} words."
end

longest_sentence("C:\\Users\\Julia\\Coding\\RUB101\\small_problems\\medium2\\example.txt")

# longest_sentence("C:\\Users\\Julia\\Coding\\RUB101\\small_problems\\medium2\\pg84.txt")
# longest_sentence("C:\\Users\\Julia\\Coding\\RUB101\\small_problems\\medium2\\example2.txt")

def longest2(file_path)
  text = File.read(file_path)
  sentences = text.split(/\.|\?|!/)
  largest_sentence = sentences.max_by { |sentence| sentence.split.size }
  binding.pry
  largest_sentence = largest_sentence.strip
  number_of_words = largest_sentence.split.size
  puts "#{largest_sentence}"
  puts "Containing #{number_of_words} words"
end

longest2("C:\\Users\\Julia\\Coding\\RUB101\\small_problems\\medium2\\example.txt")