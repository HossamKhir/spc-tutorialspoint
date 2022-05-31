#! /usr/bin/ruby -w

class Customer
  @@no_customers = 0

  def initialize(id, name, addr)
    @@no_customers += 1
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end

  # methods === member functions
  def greeting
    puts "Hello, #{@cust_name}"
  end

  def display_details
    puts "id:\t#{@cust_id}\nname:\t#{@cust_name}\naddress:\t#{@cust_addr}"
  end

  def to_s
    display_details
  end

  def self.total_num_customers
    puts "Total number of customers:\t#{@@no_customers}\r\n"
  end
end

# the new method
cust1 = Customer.new(0, 'cust1', 'addr1')
# cust2 = Customer.allocate

cust1.greeting
cust1.display_details

Customer.total_num_customers
