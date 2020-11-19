=begin
input: two integers
output: array
rules: array will contain same number of elements as first integer
value of each element will be multiplies of the second integer
data: array, string
=end

def sequence(count, starting_number)
  (1..count).to_a.each_with_object([]) do |times, result|
    result << starting_number * times
  end
end


p sequence(5, 1)
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []