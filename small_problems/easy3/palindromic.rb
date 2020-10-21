#method that returns true
#if the string passed is a panlindrome
#case, punctuation and spaces all matter
#input: string
#output: boolean

def palindrome?(input)
  input.reverse == input
end

def real_palindrome?(input)
  new_input = input.downcase.split('').select do |x|
    ('a'..'z').to_a.include?(x)
  end
  palindrome?(new_input)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
