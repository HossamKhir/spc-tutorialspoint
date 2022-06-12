#! /usr/bin/ruby -w

BEGIN { # this block gets called on the beginning of running of the file
puts 'begin code'
}

# END { # this block gets called after the file finished running
#   puts 'end code'
# }
# NOTE: used in place of END
at_exit do
  puts 'end code'
end

puts 'main code block'

# NOTE: a file could have multiple BEGINs & ENDs
# BEGIN blocks run in order
# END blocks run in reverse order
