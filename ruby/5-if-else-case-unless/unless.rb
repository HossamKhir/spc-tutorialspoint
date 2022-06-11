#! /usr/bin/ruby -w

# unless runs code if the conditional is false
# NOTE: unless w/ else could be replaced w/ if w/ a positive condition first
x = 1
unless x >= 2
  puts 'x is less than 2'
else
  puts 'x is greater than 2'
end

# unless modifier
$var = 1
print "1\t->\tValue set\n" if $var
print "2\t->\tValue set\n" unless $var

$var = false
print "3\t->\tValue set\n" unless $var
