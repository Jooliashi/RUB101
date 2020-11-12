# takes a positive integer, n
# display a right triangle whose sides each have n stars
# loop through the rows
# should have n rows and each row with n space
# n has n - row number space and row number stars

def triangle_left(n)
  row = 1
  loop do
    puts ' '*(n-row) + '*'*row
    row += 1
    break if row > n
  end
end

def triangle_right(n)
  row = 1
  loop do
    puts '*'*row
    row += 1
    break if row > n
  end
end

def triangle_down(n)
  loop do
    puts '*'*n
    n -= 1
    break if n < 1
  end
end


def triangle_up(n)
  row = 0
  loop do
    puts ' '*(row) + '*'*(n-row)
    row += 1
    break if row == n
  end
end

def any_corner(n)
  puts "What corner would you like your triangle to be at"
  puts "up, down, right, left?"
  corner = gets.chomp
  case corner
  when 'left'
    triangle_left(n)
  when 'right'
    triangle_right(n)
  when 'down'
    triangle_down(n)
  else
    triangle_up(n)
  end
end

any_corner(5)
