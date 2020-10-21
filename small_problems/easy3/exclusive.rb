#only need one of the two conditions to be truthy
#takes two arguments and return true if only one arguments is true
#false otherwise
#input: two boolean
#output: one boolean

def xor?(one, two)
  (one && two) || !(one || two) ? false : true
end

def xor2?(value1, value2)
  !!(value1 && !value2) || (value2 && !value1)
end
p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

result = xor2?(5.even?, 4.even?)
p result.class