#rules, getting an array of elements, count occurrance of each to a hash
#input, array of elements, case sensitive, empty array? other objects possible?
#output, hash with key as array elements and values as number

def count_occurrences(list)
  count = 0
  hsh = {}
  loop do
    current_key = list[count]
    if hsh.has_key?(current_key)
      hsh[current_key] += 1
    else
      hsh[current_key] = 1
    end
    count += 1
    break if count == list.length
  end
  hsh
end

def count_occurrences_case(array)
  occurrences = {}

  new_array = array.map {|x| x.downcase}

  new_array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences_case(vehicles)
