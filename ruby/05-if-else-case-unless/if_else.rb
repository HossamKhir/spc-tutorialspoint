#! /usr/bin/ruby -w

x = 1
# NOTE: the then keyword is optional, use it in single-line if
# if x > 2 then
if x > 2
  puts 'x is greater than 2'
elsif x <= 2 and x != 0
  puts 'x is 1'
else
  puts 'can\'t guess the number'
end

# if modifier
$debug = 1
print "debug\n" if $debug
