#! /usr/bin/ruby -w

# methods are functions (since ruby is OO)
# NOTE: on defining methods that has no arguments, the parentheses should be
# dropped

def no_parent
  print "I have no strings on me\n"
end

# calling argument-less methods do not need parentheses
no_parent
no_parent() # also works

# methods that do take arguments, need the parentheses
def argue(about)
  puts "People argue about #{about}"
end

# calling a methods that takes required arguments w/o argument raises an exception
# argue # raises an exception
argue('FIFA')

# method definition could hold default values, where not passed as arguments on
# method call, it (the default) is used in place
def test(a1 = 'Ruby', a2 = 'Perl')
  puts "Programming in #{a1}"
  puts "Programming in #{a2}"
end

test 'C', 'C++' # NOTE: parentheses are optional during sending arguments
test

# each method in ruby returns, by default, the value of the last statement
def method
  i = 100
  j = 10
  k = 0
end

res = method # returns 0, as it is the value of the last statement in the method
puts res

# returning values is also possible using `return` statement, which may return
# multiple values
def sky
  i = 100
  j = 200
  k = 300
  # [i, j, k] # alternative to return, since the last statement is the return
  return i, j, k
end
var = sky
puts var

# using variable number of arguments
def variable(*test)
  puts "# of arguments is #{test.length}"
  # for i in 
  (0...test.length).each do |i|
    puts "test[#{i}]=#{test[i]}"
  end
end

variable "Zara", "6", "F"
variable "Mac", "36", "M", "MCA"
