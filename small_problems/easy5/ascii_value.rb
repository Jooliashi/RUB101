# a method that determines and returns ASCII string value
# should be the sum of every character's value

def ascii_value(input)
  input.split('').reduce(0) do |sum , i|
    sum + i.ord
  end
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0