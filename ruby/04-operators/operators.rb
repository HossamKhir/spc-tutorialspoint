#! /usr/bin/ruby -w

# NOTE: operators are like methods, where operands on right hand are arguments
a = 10
b = 20

# arithmetic operators
puts a + b
puts a - b
puts a * b
puts "#{a / b}\t#{b / a}" # division of 2 integers is an integer, regardless
puts "#{a % b}\t#{b % a}"
puts a**b

# comparison operators
puts a == b
puts a != b
puts "#{a > b}\t#{a < b}"
puts "#{a >= b}\t#{a <= b}"
# called combined comparison, returns 0 on equality, 1 on greater, -1 on less
puts a <=> b
# the === is special comparison operator, checks for value inside range
# puts (1..10) === 5
puts (1..10).include?(5)
puts a.eql?(10.0) # checks for both type, & value
puts a.equal?(10)

# assignment operators
c = a + b # simple assignment
c += a    # shorthand increment => c = c + a
c -= a    # shorthand decrement
c *= a    # shorthand multiply
c /= a    # shorthand division
c %= a    # shorthand modulus
c **= a   # shorthand exponentiation
# parallel assignments
a, b = b, a
puts c, a, b

# binary operators
a = 60
b = 13
puts a & b  # anding
puts a | b  # oring
puts a ^ b  # xor
puts ~a     # unary ones complement
puts a << 2 # binary left shift
puts a >> 2 # binary right shift

# logical operators
a = 10
b = 20
puts "#{a and b}\t#{a && b}"      # logical and
puts "#{a or b}\t#{a || b}"       # logical or
# puts "#{not (a && b)}#{!(a && b)}"                  # (!) logical not
puts "#{!(a && b)}\t#{!(a && b)}" # (!) logical not

# ternary operator
puts a > 10 ? a : b

# range operators
puts "#{Array(1..10)}"  # inclusive range [1,10]
puts "#{Array(1...10)}" # exclusive range [1,10[

# defined? operator
# INFO: defined? is a directive that tells if the argument is defined, returns
# `nil` if not defined, and a string description of the argument if it is
foo = 42
puts defined? foo       # returns "local-variable"
puts defined? $_        # returns "global-variable"
puts defined? bar       # returns nil
puts defined? puts      # returns method
puts defined? puts(bar) # returns nil as bar is not defined
puts defined? puts(foo) # returns method
# NOTE: need to learn more about super & yield
puts defined? super
puts defined? yield

# `.` (dot) & `::` (double colon) operators
# INFO: a `.` allows access to function calls from modules/objects, while `::`
# is used to reference constants(constants may include instance & class methods)
# NOTE: if using `::` w/o prefix, the default of Object class is used
MR_COUNT = 0 # constant in main Object

module Foo
  MR_COUNT = 0    # constant in Foo
  ::MR_COUNT = 1  # setting global MR_COUNT to 1
  MR_COUNT = 2    # setting local MR_COUNT to 2
end

puts MR_COUNT       # the global constant
puts Foo::MR_COUNT  # the Foo constant

CONST = ' out there'

class InsideOne
  CONST = proc { ' inside here'}
  def whereIsMyCONST
    ::CONST + ' inside one'
  end
end
class InsideTwo
  CONST = ' inside two'
  def whereIsMyCONST
    CONST
  end
end

puts InsideOne.new.whereIsMyCONST
puts InsideTwo.new.whereIsMyCONST
puts Object::CONST + InsideTwo::CONST
puts InsideTwo::CONST + CONST
puts InsideOne::CONST
puts InsideOne::CONST.call + InsideTwo::CONST

# operator precedence
# in order:
# ::    constant resolution
# [][]= element reference, element set
# **    exponentiation
# !~+-  unary operators (not, complement, unary plus [+@], unary minus [-@])
# */%   multiplication, division, modulus
# +-    addition, subtraction
# << >> binary shifting
# &     bitwise AND
# ^|    bitwise XOR, bitwise OR
# <= < > >= comparison operators
# <=> == === != =~ !~ equality & pattern match
# &&    logical AND
# ||    logical OR
# .. ...  ranges
# ?:    ternary
# = %= /= -= += &= |= >>= <<= *= &&= ||= **= assignment
# defined?
# not   logical negation
# or and  logical composition
