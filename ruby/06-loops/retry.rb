#! /usr/bin/ruby -w

# begin blocks can have rescue clauses to handle exceptions, that's where
# `retry` might appear to restart from the beginning of the begin block

# when used inside iterator or in for loop, it restarts the invocation of the
# loop or iterator
for i in 0..5
  retry if i > 2
  puts "value\t#{i}"
end
