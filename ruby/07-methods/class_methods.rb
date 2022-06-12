#! /usr/bin/ruby -w

# NOTE: methods definition inside classes are public by default
# NOTE: methods definitions outside classes are private by default

class Account
  def readingCharge; end # empty methods can be declared like that

  # INFO: declaring class method
  def Account.returnDate; end # or
  # def self.returnDate; end
end

puts Account.returnDate
