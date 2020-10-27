# method that takes a year as input
# returns the century
# Return value is a string that begins with century number end with st,nd,rd,or th
# validate positive integer
# define correct_year?
# create ending hash with digit in string matching with correct ending
# calculate the correct century number
# case when year < = 100 century = 1
# case when year % 100 == 0 century = year / 100
# else century = year / 100 + 1
# attach the correct ending
# if century > 10 && year.to_s.chars[-2] == 1
# century << 'th'
# else
# century << ending[year.to_s.char.last]

def correct_year?(year)
  year.is_a?(Integer) && year > 0
end

def century(year)
  return "This input is invalid" if !correct_year?(year)
  century = 0
  if year % 100 == 0
    century = year / 100
  else
    century = year / 100 + 1
  end

  century.to_s + century_suffix(century)
end

def century_suffix(century)
  attachement = {'1' => 'st',
    '2' => 'nd',
    '3' => 'rd'
  }

  century_str = century.to_s

  if century_str[-2] == '1' || !attachement.keys.include?(century_str[-1])
    'th'
  else
    attachement[century_str[-1]]
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'