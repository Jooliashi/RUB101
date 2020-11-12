=begin
input: string
output: new string
rules: return string which its every other character is capitalized
questions: does space count?
data: string, array
algo:
  split string into chars in a array
  only capitalize the even index of the array
=end

def staggered_case(string)
  changed = []
  string.chars.each_with_index do |char, index|
    changed << char.upcase if index.even?
    changed << char.downcase if index.odd?
  end
  changed.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

def staggered_case2(string, choice = true)
  result = ''
  need_upper = choice
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end
p staggered_case2('I Love Launch School!')
p staggered_case2('I Love Launch School!', false)