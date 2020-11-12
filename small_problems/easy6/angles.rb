# takes a floating point number between 0 - 360
# returns a string that shows degress mins and seconds
# input: number
# output: string
# 1 degree = 60 mins = 360 seconds
# take the whole number as degree and then convert rest degree into seconds
DEGREE_TO_MIN = 60
MIN_TO_SEC = 60
DEGREE = "\xC2\xB0"

def dms(input)
  input = (input.divmod(360))[1]
  degree = input.to_i
  rest = ((input - degree)*DEGREE_TO_MIN*MIN_TO_SEC).round
  mins, secs = rest.divmod(60)
  format(%(#{degree}#{DEGREE}%02d'%02d"),mins,secs)
end

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")