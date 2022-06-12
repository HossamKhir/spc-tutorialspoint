#! /usr/bin/ruby -w

=begin integers

ranges from -2^62 to 2^62-1
integers inside the range fall into class Fixnum, and outside that range fall
into class Bignum

usage of base indicators:
0 for octal
0x for hexadecimal
0b for binary
using _ for readability is allowed

to get the ASCII number of a character, precede it w/ a `?`

=end

int_example = 123
int_example = 1_234
int_example = -500
int_example = 0377    # octal
int_example = 0xff    # hex
int_example = 0b1011  # binary
int_example = ?a      # notice no strings
int_example = ?\n
int_example = 12345678901234567890 # bignum

puts int_example

# INFO: floats are from Float class
flt = 123.4
flt = 1.0e6 
flt = 4E20
flt = 4e+20

puts flt

=begin string literals

INFO: " strings allow for substitution & backslash notations
' strings allow for backslash notation only for \' & \\

INFO: substitution is done inside the #{sub_expression}

=end

puts 'escape using "\\"'
puts 'that\'s it, my boy'

puts "A day is #{24*60*60} seconds long"

# INFO: string methods
my_str = "This is a Test!"

puts my_str.downcase

# INFO: arrays
ary = ["fred", 10, 3.14159, "this is a string", "last element",]
ary.each do |i|
  puts i
end