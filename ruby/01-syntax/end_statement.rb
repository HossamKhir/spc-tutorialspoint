#! /usr/bin/ruby -w

# end statement declares code to be called after running the programme

puts 'This is main Ruby programme'

# END {
#     puts "Terminating Ruby Programme"
# }

# recommended in place of END
at_exit do
  puts 'Terminating Ruby Programme'
end
