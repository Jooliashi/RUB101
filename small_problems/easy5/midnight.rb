# method that receives integer positive or negative
# integer represents minutes
# if positive
# divmod number, use remainder as minutes
# use result for divmod, and use remainder again for hours
# if negative
# divmod number, use remainder as minutes
# use result for divmod, and if minutes > 0
# 60 - minutes
# hours - remainder
def format(number)
  if number < 10
    '0' + number.to_s
  else
    number.to_s
  end
end

def time_of_day(minutes)
    h, m = minutes.divmod(60)
    d, h2 = h.divmod(24)
    format(h2) + ':' + format(m)
end



def time_of_day2(minutes)
  delta_seconds = minutes * 60
  time = Time.new(2020,10,11,0,0,0) + delta_seconds
  time.strftime("%A %02k:%M")
end
p time_of_day2(0)
p time_of_day2(-3)
p time_of_day2(35)
p time_of_day2(-1437)
p time_of_day2(3000)
p time_of_day2(800)
p time_of_day2(-4231)