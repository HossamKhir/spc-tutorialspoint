#! /usr/bin/ruby -w

class Box
  # initialize method acts like a constructor
  def initialize(w, h)
    # the only method that is private by default, all methods are public
    # parallel assignment of instance variables (attributes)
    @width, @height = w, h

    # shorthand increment works here too
    @@count += 1
  end

  # accessor/getter methods
  def print_width
    @width
  end

  def print_height
    @height
  end

  # setters
  def set_width=(value)
    @width = value
  end

  def set_height=(value)
    @height = value
  end

  # instance methods
  def get_area
    @width * @height
  end

  # class methods & variables
  # static variables prepended by '@@'
  @@count = 0

  # static methods start with self.method_name
  def self.print_count()
    puts "Box count is\t#@@count"
  end

  # special methods
  # to_s a method to return the representation of the object as a string
  def to_s
    "(w:\t#@width,\th:\t#@height)"
  end

  # access control
  # ruby has access control on methods, but not on variables
  # the classical 3 access control levels are supported:
  # public, private, protected

  def print_area()
    @area = @width * @height
    puts "Box area is:\t#@area"
  end
  # to make a method protected
  protected :print_area

  # operator overloading
  # adding objects
  def +(other)
    Box.new(@width + other.width, @height + other.height)
  end

  # unary - (negation)
  def -@
    Box.new(-@width, -@height)
  end

  # scalar multiplication
  def *(scalar)
    Box.new(@width * scalar, @height * scalar)
  end

  # class constants
  # a constant is just a variable that is not preceded w/ either @ or @@
  BOX_COMPANY = "TATA Inc."
  BOX_WEIGHT = 10

  # class information
  # the body of the class could be an executable code
  # puts "Type of self:\t#{self.type}"
  puts "Name of self:\t#{self.name}"
end

# INFO: inheritance
# ruby does not support multiple levels of inheritance, but supports mixins?

# to inherit from superclass
class BigBox < Box

  # methods overriding
  # simply redefine the method
  def get_area()
    @area = @width * @height
    puts "Big Box area is:\t#@area"
  end

end


# instantiating an object
box = Box.new(10, 20)

# using setters
box.set_width = 30
box.set_height = 50

# using accessor methods
x = box.print_width()
y = box.print_height()

puts "Width of the box is:\t#{x}"
puts "Height of the box is:\t#{y}"

a = box.get_area()

puts "Area of the box is:\t#{a}"

b2 = Box.new(30, 100)

Box.print_count()

puts "String representation of box is:\t#{box}"

# produces an error as this is a protected method
# b2.print_area()

bb = BigBox.new(20, 10)

bb.get_area()

# freezing objects means to make objects constant
box.freeze

if (box.frozen?)
  puts "Box is a frozen object"
else
  puts "Box is a normal object"
end # notice how statements need end

# a frozen object will throw an exception on attempting to manipulate it
# box.set_height = 300

puts Box::BOX_COMPANY
puts "Box weight is:\t#{Box::BOX_WEIGHT}"

# on creating a new object that is not meant to be initialised, use allocate
b2 = Box.allocate

# calling the methods on non-initialised instance raises an exception
# a = b2.get_area()
