#! /usr/bin/ruby -w

# creating file objects
me = File.new('./files.rb', 'r') # opens file in read-only mode
me.close # after finishing processing, the resources should be released

# using File.open
# NOTE: File.open can be used w/ blocks, File.new cannot

File.open('./files.rb', 'r') do |me|
  puts me.inspect
end

file_name = './test.txt'

File.open(file_name, 'w') do |write_only|
  # the file will be overriden if it exists, or created if not
  write_only.puts 'file created'
end

File.open(file_name, 'r+') do |read_write|
  # the file must exist, and the pointer starts @ the beginning of the file
  puts read_write.sysread(1024)
end

File.open(file_name, 'w+') do |read_write|
  # same behaviour as write-only, but allows for reading
  read_write.syswrite "file written into\n"
  read_write.puts 'another one bites the dust'
end

lines = IO.readlines(file_name) # reads the file as lines, returns it as array
puts lines.length, lines

# reads the file as lines, passing line by line to the block
IO.foreach(file_name) { |line| print line, "\n" }

File.open(file_name, 'a') do |append|
  # append mode is write-only, if the file exists, the pointer is @ EOF, if it
  # doesn't, a new file is created
end

File.open(file_name, 'a+') do |read_write|
  # the file is open for R/W, but in append mode, the pointer is @ EOF, if the
  # file does not exist, a new file is created
end

# renaming & deleting files
File.rename(file_name, './TBD.txt')
File.delete('./TBD.txt')

# modes & ownership
file = File.open(file_name, 'w')
file.chmod(0o755) # change mode, takes the same codes as UNIX chmod's
file.close

# file inquiries
puts File.exist?(file_name)         # checks if the file exists
puts File.file?(file_name)          # checks if the path refers to a file
puts File.directory?('/usr/local/') # checks if the path refers to a directory
puts File.directory?(file_name)
puts File.readable?(file_name)      # checks if the file is readable,
puts File.writable?(file_name)      # writable,
puts File.executable?(file_name)    # executable
puts File.zero?(file_name)          # checks if the file is of zero length
puts File.ftype file_name           # checks the type of the path object
# could be {file, directory, characterSpecial, blockSpecial, fifo, link,
# socket, unknown }
puts File.ctime file_name          # returns creation time
puts File.mtime file_name          # returns last modified time
puts File.atime file_name          # returns last accessed time
