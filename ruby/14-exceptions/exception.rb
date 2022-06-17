#! /usr/bin/ruby -w
require './file_save_error'

path = './existant_file.txt'

File.open(path, 'w') do |_file|
  raise FileSaveError, $!
rescue StandardError => e
  puts e.message
end
