#! /usr/bin/ruby -w

cwd = Dir.pwd       # returns the current working directory
Dir.chdir('/tmp/')  # changes the current directory to /tmp/
puts Dir.pwd
Dir.chdir(cwd)

# lists all directories & files in the specified directory
puts Dir.entries('/home/prime').join(' ')
# NOTE: Dir.entries returns an array, to access entries one by one use:
Dir.foreach '/usr/local/bin' do |entry|
  print entry, ' '
end
# or an even concise way
puts Dir['/home/prime/*']

# create new directory, the second argument is the mode (chmod), it is optional
Dir.mkdir 'testdir', 755
Dir.delete 'testdir' # deletes a directory

# using temporary directories
# to provide access to the system temporary directory through Dir.tmpdir
require 'tmpdir'
file_name = File.join Dir.tmpdir, 'tingtong'
tmpfile = File.new file_name, 'w'
tmpfile.puts 'this is a temporary file, ya hear me'
tmpfile.close
File.delete(file_name)

# NOTE: std library of ruby has tempfile module to create temp files
require 'tempfile'
tmpfile = Tempfile.new('tingtong')
tmpfile.puts 'Hello? Is it me you\'re looking for?'
puts tmpfile.path
tmpfile.close
