def running_total(input)
  run = []
  sum = 0
  input.each do |number|
    sum += number
    run << sum
  end
  run
end
p running_total([2, 5, 13])