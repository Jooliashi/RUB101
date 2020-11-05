# takes an array of integer (0..19)
# returns an array of those sorted based on english words
# input: array
# output: array (new or same)
# modify the array so it refers to its english counterparts
# then sort
ALPHA_NUM = {0 => 'zero',
1 => 'one',
2 => 'two',
3 => 'three',
4 => 'four',
5 => 'five',
6 => 'six',
7 => 'seven',
8 => 'eight',
9 => 'nine',
10 => 'ten',
11 => 'eleven',
12 => 'twlve',
13 => 'thirteen',
14 => 'fourteen',
15 => 'fifteen',
16 => 'sixteen',
17 => 'seventeen',
18 => 'eighteen',
19 => 'nineteen'}

def alphabetic_number_sort(numbers)
  alpha = numbers.map do |i|
    ALPHA_NUM[i]
  end
  alpha.sort!
  alpha.map do |i|
    ALPHA_NUM.key(i)
  end
end



NUMBER_WORDS = %w(zero one two three four
  five six seven eight nine
  ten eleven twelve thirteen fourteen
  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort2(numbers)
  numbers.sort_by! { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort2((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

p NUMBER_WORDS