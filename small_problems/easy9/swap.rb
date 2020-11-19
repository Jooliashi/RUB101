=begin
input: a string that include a name
output: string
=end

def swap_name(string)
  "#{string.split[-1]}, #{string.split[0]}"
end

p swap_name('Joe Roberts')

def swap_name2(string)
  string.split(' ').reverse.join(', ')
end

p swap_name2('Joe Roberts')