#prompts the user for two positive integers and then prints 6 operations result
#no need to validate the input
#input: two positive integers
#output: six strings
def prompt(message)
  puts "==> #{message}"
end

prompt "Enter the first number:"
first = gets.chomp.to_f
prompt "Enter the second number:"
second = gets.chomp.to_f

prompt "#{first} + #{second} = #{first+second}"
prompt "#{first} - #{second} = #{first-second}"
prompt "#{first} * #{second} = #{first*second}"
prompt "#{first} / #{second} = #{first/second}"
prompt "#{first} % #{second} = #{first%second}"
prompt "#{first} ** #{second} = #{first**second}"