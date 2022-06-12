#! /usr/bin/ruby -w

# global variables are prepended by '$'
$GLOBAL_VARIABLE = 'global'

class TestClass
  # class variables start w/ '@@'
  @@class_variable = 0

  def initialize(i_var)
    @@class_variable += 1
    # instance variables start w/ '@'
    @instance_variable = i_var
  end

  def print_instance_variable
    @instance_variable
  end

  def method
    # local variables are simply variables that start w/ a letter or _
    local = 'local'
    puts local
    @@class_variable
  end
end

puts $GLOBAL_VARIABLE

obj = TestClass.new('test')
# puts "#{TestClass::class_variable}"
puts obj.print_instance_variable

puts "#{obj.method}"
