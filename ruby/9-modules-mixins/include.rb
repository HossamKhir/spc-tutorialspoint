#! /usr/bin/ruby -w

# use `include` to embed a module in a class
# NOTE: if the module is defined in a different file, it needs 1st to be required

require './support'

class Decade
  include Week
  no_of_year = 10
  def no_of_months
    puts Week::FIRST_DAY
    number = 10 * 12
    puts number
  end
end

d1 = Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months
