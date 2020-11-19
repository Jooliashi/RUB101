require 'pry'
def joinor(array, division = ', ', ending = 'or')
  if array.size == 2
    return "#{array[0]} #{ending} #{array[1]}"
  else
    last = array.pop
    result = ''
    array.each do |element|
      result << element.to_s << division
    end
    result << ending << ' ' << last.to_s
  end
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')
p joinor([])