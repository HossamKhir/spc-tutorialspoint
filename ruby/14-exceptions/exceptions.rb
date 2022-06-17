#! /usr/bin/ruby -w

file_name = './nonexistant_file.txt'

begin
  file = open(file_name)
  puts 'file opened successfully' if file
rescue StandardError
  file = STDIN
  # INFO: there can be multiple rescue clauses for different exceptions
  # INFO: there could be an optional else clause for handling the casoe of no
  # exceptions
  # INFO: there could be another clause, `ensure` that runs regardless of
  # exceptions happening or not
end

print file, '===', STDIN, "\n"

# INFO: the retry statement moves the control to the beginning of the enclosing
# begin block, to start executing from the beginning

begin
  file = open(file_name)
  puts 'file opened successfully' if file
rescue StandardError
  file_name = './existant_file.txt'
  retry # this returns the control to the beginning of the block
  # NOTE: be mindful using retry clauses, it can cause infinite loops
end

# raising exceptions
begin
  puts 'This is before raise'
  raise 'An error occurred'
  puts 'This is after raise'
rescue StandardError
  puts 'rescued'
end

puts 'after the begin block'

begin
  raise 'A test exception'
rescue RuntimeError => e
  puts e.message
  puts e.backtrace.inspect
  puts $! # INFO: this is a special variable that hold the last exception message
ensure # the `ensure` statement
  puts 'ensuring exception'
end

begin
  # raise 'a test exception'
  puts 'not raising exceptions'
rescue RuntimeError => e
  puts e.message
  puts e.backtrace.inspect
else
  puts 'Phew, no exceptions there!'
ensure
  puts 'ensuring execution'
end
