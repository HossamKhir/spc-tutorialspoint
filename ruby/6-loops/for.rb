#! /usr/bin/ruby -w

# NOTE: do keyword is optional
# for i in 0..5 do
for i in 0..5
  puts "value is\t#{i}"
end

# this is equivalent to

(0..5).each do |i|
  puts "value is\t#{i}"
end
