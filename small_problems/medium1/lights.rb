=begin
input: n (bigger than 1?)
output: an array with integers
rules:
  should have a counter that increases until n with each loop
data: array, integer
algorithm:
  generate an array that each element as [integer, off]
  and it should have n element
  set counter as 1
  loop
    (n % counter) times do |m|
  array[counter*m - 1][1] = if array[counter*multiplier - 1][1] == 'off'
                              'on'
  else
    off
  counter += 1
  break if counter > n
=end
require 'pry'

def initialize_lights(num_of_lights)
  (1..num_of_lights).to_a.product(['off'])
end

def light_state(lights, state)
  lights.select { |a, b| b == state }.map { |i| i[0] }
end

def joinor(arr)
  case arr.size
  when 1
    arr.first
  when 2
    "#{arr[0]} and #{arr[1]}"
  else
    arr[0..-2].join(', ') + " and #{arr[-1]}"
  end
end

def result(lights)
  on_lights = light_state(lights, 'on')
  off_lights = light_state(lights, 'off')
  "lights #{joinor(on_lights)} are on; lights #{joinor(off_lights)} are off."
end

def lights(num_of_lights)
  lights = initialize_lights(num_of_lights)
  counter = 1
  loop do
    (num_of_lights / counter).times do |m|
      position = counter*(m+1)-1
      if lights[position][1] == 'off'
        lights[position][1] = 'on'
      else
        lights[position][1] ='off'
      end
    end
    counter += 1
    break if counter > num_of_lights
  end
  result(lights)
end

p lights(5)
p lights(10)




