#! /usr/bin/ruby -w

class Customer
=begin
  block comments must start at the beginning of the line & end there
  INFO: global variable start w/ `@@`
  global variables must be initialised before usage
=end
@@customers_number = 0

=begin
  INFO: constants start w/ uppercase letter, and cannot be defined inside methods
  defining constants inside module/class, makes it accessible inside module/class
  defining constants outside them, makes them accessible globally

  NOTE: referencing uninitialised constant raises an exception
  assigning to an initialised constant raises a warning
=end
  VAR1 = 100

=begin
  INFO: sudo variables are special variables, appear local, but behave as
  constants, can't be reassigned

  self: receiver object of current method
  true/false: representation of booleans
  nil: representation of undefined
  __FILE__: name of the current source file
  __LINE__: current number line of current source file
=end
  def initialize(id, name, addr)
    # INFO: instance variable start w/ `@`
    @cust_id = id
    @cust_name = name
    @cust_addr = addr

    # NOTE: uninitialised instance variables have the value nil
    @uninitialised

    @@customers_number += 1
  end

  def print_details
    puts "Customer id\t#{@cust_id}"
    puts "Customer name\t#{@cust_name}"
    puts "Customer address\t#{@cust_addr}"
  end

  def total_number_customers
    puts "Total number of customers:\t#{@@customers_number}"
  end

  def show
    puts VAR1
  end
end

cust1 = Customer.new(1, 'John Doe', 'Nowhere')
cust2 = Customer.new(2, 'Paul Atreides', 'Arrakis')

cust1.print_details
cust2.print_details

cust2.total_number_customers

=begin

INFO: local variables start w/ a lowercase letter or _
when referenced w/o being initialised, ruby interprets that as a call to function
w/ no parameters

INFO: scope of local variables ranges from:
  module
  class
  def/do till corresponding end
  between {}

=end

cust2.show
