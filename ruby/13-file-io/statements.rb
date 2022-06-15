#! /usr/bin/ruby -w

# puts: put string
var1 = 'Hello, I\'m a variable'
puts var1 # puts introduces a new line by default, for each of its arguments
puts 1, var1, 2

# gets: get string, reads from STDIN
puts 'Enter a value:'
var1 = gets
puts "You entered:\t#{var1}"

# putc: put character, prints a single character on STDOUT
putc var1 # putc does not insert a new line

# print: same as puts, but it doesn't automatically add a new line
print "\n", var1, "\n"
