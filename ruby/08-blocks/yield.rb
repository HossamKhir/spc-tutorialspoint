#! /usr/bin/ruby -w

def test
  puts 'You\'re in the method'
  yield # calls the accompanying block
  puts 'You\'re back in the method'
  yield
end

test { puts 'You\'re in the block' }
test {}

# yield with params
def withParams
  yield 5
  puts 'Inside the method'
  yield 100
end

withParams { |i| puts "Inside block #{i}" }

def lastParam(&block)
  block.call
end

lastParam { puts 'Hello, World!' }
