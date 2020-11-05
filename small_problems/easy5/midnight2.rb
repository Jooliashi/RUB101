# after midnight - hour * 60 + minutes
# before midnight - total minutes in a day - after midnight
require 'time'

def after_midnight(time_of_day)
  time_of_day = time_of_day.split(':')
  hour_min = time_of_day[0].to_i * 60
  min = time_of_day[1].to_i
  total = hour_min + min
  total % 1440
end

def before_midnight(time_of_day)
  if after_midnight(time_of_day) == 0
    0
  else
    1440 - after_midnight(time_of_day)
  end
end

CONVERT_TO_MINUTES = 60
HOURS_IN_DAY = 24
MINUTES_PER_DAY = HOURS_IN_DAY * CONVERT_TO_MINUTES

def after_midnight2(time_string)
  hours = Time.parse(time_string).hour
  minutes = Time.parse(time_string).minutes

  return 0 if hours == 24

  hours*CONVERT_TO_MINUTES + minutes
end

def before_midnight2(time_string)
  (1440 - after_midnight2(time_string)) % 1440
end

p after_midnight('00:00')
p before_midnight('00:00')
p after_midnight('12:34')
p before_midnight('12:34')
p after_midnight('24:00')
p before_midnight('24:00')