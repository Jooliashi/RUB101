# takes an array of strings and return an array of the same string values
# except with the vowels (a,e,i,o,u)
# input: array (multi layer?)
# output: new array
VOWELS =%w(a e i o u A E I O U)
def remove_vowels(arr)
  arr.map do |element1|
    clean = ''
    element1.chars do |i|
      clean << i if !VOWELS.include?(i)
    end
    clean
  end
end

def remove_vowels2(arr)
  arr.map {|string| string.delete('aeiouAEIOU')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


