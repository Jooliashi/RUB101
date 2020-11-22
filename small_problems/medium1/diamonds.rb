=begin
input: odd integer
output: a diamond shaped graph which will be made of outputting
strings
rules/output pattern:
diamond 1
lines: 1 space 1 star
three starts
1 space 1 star
diamond 9
lines: 4 space 1 star
3 space, 3 star
2 space, 5 star
1 space, 7 star
none space, 9 star
rest is same as first four but in opposite order
number of lines = n
number of space counting = n / 2 growing by 1
star = 1 growing by 2
=end
def diamond_upper(space_count, star_count)
  loop do
    puts " " * space_count + "*" * star_count
    space_count -= 1
    star_count += 2
    break if space_count < 0
  end
end

def diamond_lower(space_count, star_count)
  loop do
    space_count += 1
    star_count -= 2
    puts " " * space_count + "*" * star_count
    break if star_count == 1
  end
end

def diamond(n)
  diamond_upper(n/2, 1)
  diamond_lower(0, n)
end

# diamond(5)
# diamond(9)
# diamond(3)

def print_row(grid_size, distance_from_center)
  case distance_from_center
  when grid_size / 2 then number_of_stars = 1
  else                    number_of_stars = 2
  end
  inner_space = ' ' * (grid_size - 2 * distance_from_center - number_of_stars)
  stars = '*' * number_of_stars
  puts stars.insert(1, inner_space).center(grid_size)
end

def diamond_outline(grid_size)
  max_distance = grid_size / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamond_outline(5)