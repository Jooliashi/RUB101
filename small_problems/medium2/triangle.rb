=begin
input: 3 numbers
output: symbol
data: symbol, number, array
=end

def triangle(side1, side2, side3)
  three_sides = [side1, side2, side3]
  sum = three_sides.sum
  return :invalid if three_sides.any? { |side| side <= 0 } ||
                    three_sides.any? { |side| side >= sum - side }
  return :equilateral if three_sides.all? { |side| side == sum / 3}
  return :isosceles if three_sides.uniq.size == 2
  :scalene
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
