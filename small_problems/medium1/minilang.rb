require 'pry'
NON_NIL_FUNCTIONS = ['ADD', 'SUB', 'MULT', 'DIV', 'POP', 'MOD']
ALL_FUNCTIONS = ['ADD', 'SUB', 'MULT', 'DIV', 'POP', 'MOD', 'PRINT', 'PUSH']

def valid_number_token?(token)
  token.to_i.to_s == token
end

def any_errors?(token, stack)
  if NON_NIL_FUNCTIONS.include?(token) && stack.empty?
    "ERROR; the stack is empty"
  elsif (ALL_FUNCTIONS.include?(token) || valid_number_token?(token)) == false
    "ERROR; This token is invalid "
  else
    nil
  end
end

def minilang(program)
  stack = []
  register = 0

  program.split.each do |token|
    error_msg = any_errors?(token, stack)
    return error_msg if error_msg
    case token
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'POP'   then register = stack.pop
    when 'MOD'   then register %= stack.pop
    when 'PUSH'  then stack.push(register)
    when 'PRINT' then p register
    else              register = token.to_i
    end
  end
  nil
end

# minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT')

minilang('5 PUSH PRINT')

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
