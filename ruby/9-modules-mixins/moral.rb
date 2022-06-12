#! /usr/bin/ruby -w

module Moral
  VERY_BAD = 0
  BAD = 1
  # there is another method in trig.rb w/ similar declaration
  def self.sin(badness)
    "#{badness} is a bad sin"
  end
end
