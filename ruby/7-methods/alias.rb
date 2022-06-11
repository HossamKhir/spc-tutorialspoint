#! /usr/bin/ruby -w

# NOTE: the alias of a method keeps the current definition of the method, even 
# when method is overridden
def termOfEndearment
  puts 'cunt'
end

# NOTE: alias statement can not appear inside the body of the method

alias $MATCH $&             # aliasing globals
alias foo termOfEndearment  # aliasing methods
foo
puts $MATCH
