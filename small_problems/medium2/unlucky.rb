=begin
input: positive number > 1752
output: number
algorithm:
  use 1753 as the starting year where Jan 1 is a Saturday
  calculate which day it is on the first day of the given year
  verify if the given year is a leap year or no
  from then on calculate how many days of each month's thirteen from the first day
  calculate if that day is a friday
=end
require 'date'
require 'pry'

def friday_13th2(year)
  unlucky_count = 0
  thirteenth = Date.civil(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end

def fridays(year)
  month_count = 0
  friday = Date.civil(year, 1, 1)
  month= 1
  loop do
    friday_count = 0
    loop do
      friday_count += 1 if friday.friday?
      friday = friday.next_day
      break if friday.mon != month
    end
    month_count += 1 if friday_count >= 5
    month += 1
    break if month == 13
  end
  month_count
end

p fridays(2019)




BASE = 1753
DAYS = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
DAY_PER_MONTH = {1 => 31, 2 => [28, 29], 3 => 31, 4 => 30,
                 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30,
                 10 => 31, 11 => 30, 12 => 31}
def leap_year?(year)
  case
  when year % 400 == 0
    true
  when year % 100 == 0
    false
  when year % 4 == 0
    true
  else
    false
  end
end

def advances_of_days(year)
  count = BASE
  advances = 0
  loop do
    count += 1
    advances += leap_year?(count) ? 2 : 1
    break if count == year
  end
  advances
end

def days_away(year)
  all_thirteens = []
  month = 1
  month_end = -1
  loop do
    all_thirteens << month_end + 13
    if month == 2
      month_end += leap_year?(year) ? DAY_PER_MONTH[month][1] : DAY_PER_MONTH[month][0]
    else
      month_end += DAY_PER_MONTH[month]
    end

    month += 1
    break if month > 12
  end
  all_thirteens
end

def friday_13th(year)
  advances = advances_of_days(year)
  first_day_advance = advances % 7
  all_thirteens = days_away(year)
  all_thirteens.map! do |days|
    addition = (days % 7 + first_day_advance) % 7
    DAYS[addition]
  end
  all_thirteens.count('Friday')
end

# p friday_13th2(2015)
# p friday_13th2(1986)
# p friday_13th2(2019)
