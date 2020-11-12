=begin
algo:
  split into array of each character
  set upper case to true
  verify if character is a alphabet
    if uppercase is true upcase
    if false down case
    reverse upcase
  if character is not a alphabet
    return character itself
  rejoin the array
=end

def staggered_case(string)
  up_case = true
  changed_array = []
  string.chars.each do |char|
    if char =~ /[A-Za-z]/
      if up_case
        changed_array << char.upcase
      else
        changed_array << char.downcase
      end
      up_case = !up_case
    else
      changed_array << char
    end
  end
  changed_array.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
