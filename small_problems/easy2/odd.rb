#rules: print all odd numbers 1-99 inclusively
#all print on seperate lines
# for number in 0..99
#   print "#{number}\n" if number.odd?
# end

1.upto(99) {|i| print "#{i}\n" if i.even?}