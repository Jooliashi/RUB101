=begin
ask for two numbers
asks for the type of operation to perform
display the result

my version:

puts "Please insert two numbers"
  one = gets.chomp.to_f
  two = gets.chomp.to_f
puts "What type of operations? add, subtract, multiply or divide"
answer = gets.chomp.downcase
case answer
when "add"
  puts "your answer is #{one + two}"
when "subtract"
  puts "your answer is #{one - two}"
when "multiply"
  puts "your answer is #{one * two}"
when "divide"
  if two == 0
    puts "you cannot divde when your second number is zero"
  else
    puts "your answer is #{one / two}"
  end
end

=end
require 'yaml'
messages = YAML.load(
  File.open('calculator.yml').read
)

def prompt(message)
  puts "=> #{message}"
end
def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def valid_number?(num)
  integer?(num) || float?(num)
end

prompt(messages["welcome"])
name = ''

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end
loop do
  name = gets.chomp

  if name.empty?()
    prompt(messages["name"])
  else
    break
  end
end

prompt("Hi, #{name}!")
loop do
  number1 = ''
  number2 = ''
  loop do
    prompt(messages["num1"])
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      prompt(messages["wrong_num"])
    end
  end

  loop do
    prompt(messages["num2"])
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      prompt(messages["wrong_num"])
    end
  end

  prompt(messages["operator_prompt"])
  operator = gets.chomp
  loop do
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages["choose"])
    end
  end

  prompt("#{operation_to_message(operator)} #{messages["process"]}")

  result = case operator
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             number1.to_f * number2.to_f
           when '4'
             number1.to_f / number2.to_f
  end
  prompt("#{messages[result]} #{result}")
  prompt(messages["another"])
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt(messages["thank_you"])