HEXA = %w(1 2 3 4 5 6 7 8 9 a b c d e f)

def uuid
  count = 1
  id = ''
  loop do
    id << HEXA.sample
    count += 1
    break if count > 32
  end
  id.insert(8,'-').insert(13,'-').insert(18,'-').insert(23, '-')
end

puts uuid