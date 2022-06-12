#! /usr/bin/ruby -w

# modules provide namespaces to avoid clashes & implement mixins
module Trig
  PI = 3.141592654
  # there is another method in moral.rb w/ similar declaration
  def self.sin(x)
    "sin(#{x})"
  end

  def self.cos(x); end
end
