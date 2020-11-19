=begin
input: three integers (divide to float?)
output: string
rules: find the average of the three scores, return the matching letter value
algorithm:
  seperate letter score conditonals into different method
=end

def get_grade(score1, score2, score3)
  ave = (score1 + score2 + score3).to_f / 3
  letter_grade(ave)
end

def letter_grade(number)
  case number
  when 90..100 then 'A'
  when 80...90 then 'B'
  when 70...80 then 'C'
  when 60...70 then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p letter_grade(90)
