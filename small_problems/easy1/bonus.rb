#rules: two arguments, positive integer and boolean, calculate the bonus.
#if boolean true, bonus will be half of integer
#if boolean is false, bonus should be 0
#input:boolean and integer. what if wrong input, what if empty?
#output: a integer 0 or positive

def calculate_bonus(salary, bonus)
  bonus ? (salary/2) : 0
end
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000