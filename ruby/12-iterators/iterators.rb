#! /usr/bin/ruby -w

# discussing 2 iterators, `each` & `collect`
ary = [1, 2, 3, 4, 5]
# INFO: each returns elements one by one, passing them to the block
ary.each do |el|
  puts el
end
# NOTE: each always needs a block

# INFO: collect returns the entire collection
# NOTE: it is not required for collect to have a block
b = ary.collect { |x| 10 * x }
puts b
