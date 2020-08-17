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
def prompt(message)
  puts "=> #{message}"
end 

def valid_number?(num)
  num.to_i != 0
end 
prompt("Welcome to Calculator!Enter your name:")
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
    prompt("Make sure to enter your name")
  else  
    break 
  end 
end  

prompt("Hi, #{name}!")
loop do 
  number1 = ''
  number2 = ''
  loop do 
    prompt("What's the first number?")
    number1 = gets.chomp
    if valid_number?(number1)
      break 
    else 
      prompt("Hmm..that does not look like a valid number")
    end
  end

  loop do 
    prompt("What's the second number?")
    number2 = gets.chomp
    if valid_number?(number2)
      break 
    else 
      prompt("Hmm..that does not look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  
  prompt(operator_prompt)
  operator = gets.chomp
  loop do 
 
    if %w(1 2 3 4).include?(operator)
      break 
    else  
      prompt("Must choose 1,2,3,4")
    end  
  end  

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
          when '1'
            number1.to_i + number2.to_i
          when '2'
            number1.to_i - number2.to_i
          when '3'
            number1.to_i * number2.to_i
          when '4'
            number1.to_f / number2.to_f
  end 

  prompt("The result is #{result}")

  prompt("Do you want to perform another operation?(Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")

end 

prompt("Thank you for using the calculator. Goodbye!")