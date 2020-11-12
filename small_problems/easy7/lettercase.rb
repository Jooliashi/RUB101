=begin
input: string
output: returns a hash
Data: string, hash, array
Algo:
 create 2 different collection of empty array for lowercase, uppercase
 iterate through string, verify each character
 add to matching collection or neither
 create a hash with values as the size of the array
=end

def extract_lowercase(string)
  lowercase = []
  string.each_char do |char|
    lowercase << char if char =~ /[a-z]/
  end
  lowercase
end

def extract_uppercase(string)
  uppercase = []
  string.each_char do |char|
    uppercase << char if char =~ /[A-Z]/
  end
  uppercase
end

def letter_case_count(string)
  uppercase = extract_uppercase(string).size
  lowercase = extract_lowercase(string).size
  neither = string.size - uppercase - lowercase
  {lowercase: lowercase, uppercase: uppercase, neither: neither}
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

def letter_case_count2(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count {|char| char =~ /[a-z]/}
  counts[:uppercase] = characters.count {|char| char =~ /[A-Z]/}
  counts[:neither] = characters.count {|char| char =~ /[^A-Za-z]/}
  counts
end
