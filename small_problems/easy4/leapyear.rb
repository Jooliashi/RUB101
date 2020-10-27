# leap year - divisible by 4 or divisible by 400 (exclude divisble by 100 only)
# input: any year greater than 0
# output: boolean
# algo:
# validate input as positive integer
# conditional：
# True if divisible by 4 but not divisible by 100
# or true if divisible by 400

def is_positive_integer?(year)
  year > 0 && year.is_a?(Integer)
end

def leap_year_after?(year)
  return "invalid input" if !is_positive_integer?(year)

  if (year % 4 == 0 && !(year % 100 == 0)) ||
     (year % 400 == 0)
    true
  else
    false
  end

end

def leap_year_before?(year)
  year % 4 == 0
end

def leap_year?(year)
  year < 1752 ? leap_year_before?(year) : leap_year_after?(year)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
