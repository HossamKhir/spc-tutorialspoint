#! /usr/bin/ruby -w

# NOTE: uninitialised globals throw a warning when using -w flag
$uninitialised_global # these globals have the default value of `nil` (null)
# INFO: it is not recommended to use global variables

$global_variable = 10

class Class1
  def print_global
    puts "Global variable in Class1 is #{$global_variable}"
  end
end

class Class2
  def print_global
    puts "Global variable in Class2 is #{$global_variable}"
  end
end

obj1 = Class1.new
obj1.print_global
obj2 = Class2.new
obj2.print_global
