#! /usr/bin/ruby -w

# undef cancels the definition of a method
# NOTE: undef cannot appear in the body of the method
def bar
  puts 'see you at the foo'
end

bar
undef bar
bar
