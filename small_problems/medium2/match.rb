=begin
input: string
output: boolean
rules: parentheses must occur in matching ( and )
data: array, string
algo:
  delete everything in the string that's not parentheses
  starting deleteing pairs together
  if return nil but string is not empty that means
  single parenthesis is left inside
=end
require 'pry'
def balanced?(str)
  str.delete!("^()")
  loop do
    break if !str.gsub!("()", '')
  end
  str.empty?
end

p balanced?('What (is) this?')

p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

def matching_brackets?(str)
  brackets = { '[' => ']', '{' => '}', '(' => ')'}
  lefts = brackets.keys
  rights = brackets.values
  stack = []
  str.each_char do |c|
    if left.include? c
      stack.push c
    elsif rights.include? c
      return false if stack.empty?
      return false unless brackets[stack.pop].eql?c
    end
  end
  stack.empty?
end
