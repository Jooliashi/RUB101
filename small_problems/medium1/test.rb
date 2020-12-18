def add_to_register(command)
  command.to_i.to_s == command ? command.to_i : "ERROR: #{command} is not a valid token."
end

def execute_command(command, register, stack)
  case command
  when 'PUSH'  then stack.push(register)
  when 'PRINT' then puts register
  when 'ADD'   then register += stack.pop
  when 'SUB'   then register -= stack.pop
  when 'MULT'  then register *= stack.pop
  when 'DIV'   then register /= stack.pop
  when 'MOD'   then register %= stack.pop
  when 'POP'   then register = stack.pop
  else              register = add_to_register(command)
  end
  [register, stack]
end
# stack technically does not need to be returned by #execute_command
# since #pop mutates the object that stack points to
# I add stack as a return value to make it clearer that stack has been operated on
# and to avoid having both return values and side effects from #execute_command

def minilang(program)
  stack = []
  register = 0
  program.split.each do |command|
    register, stack = execute_command(command, register, stack)
    return "ERROR: Empty stack." if register.nil?
    return register unless register.is_a? Integer
    # register here doubles as a trigger/storage for any error messages
    # which only occurs if register is nil (meaning #pop was called on an empty stack)
    # or if register is anything other than an integer (meaning the command is invalid)
  end
  nil
end

minilang('ADD')