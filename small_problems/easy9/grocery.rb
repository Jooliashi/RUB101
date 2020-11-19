=begin
input: array
output: array
rules: turn an array of fruits with quantities into an array of correct number
=end

def buy_fruit(array)
  result =[]
  array.each do |subarray|
    1.upto(subarray[1]) do |count|
      result << subarray[0]
    end
  end
  result
end
def buy_fruit2(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end
p buy_fruit2([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

def buy_fruit2(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end