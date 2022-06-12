#! /usr/bin/ruby -w

# require statement is like C's #include, Java's import, ECMAScript5's require
# NOTE: appending the current location to the loading path helps ruby understand
# relative importing
$LOAD_PATH << '.'

require 'trig'
require 'moral'

# another way is to use relative/full paths w/o the need to append to $LOAD_PATH
# require './trig'
# require './moral'

puts Trig.sin(Trig::PI)
puts Moral.sin(Moral::VERY_BAD)
