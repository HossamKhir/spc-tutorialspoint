#! /usr/bin/ruby -w

# INFO: building ranges using `..` is inclusive range, whereas `...` is
# exclusive end
(1..5).each do |n|
  print n, ' '
end
puts
(1...5).each do |n|
  print n, ' '
end
puts

# ranges as sequences
puts "#{('a'..'d').to_a}"
puts "#{('bar'..'bat').to_a}"

digits = (0..9)

puts digits.include?(5)
puts digits.min
puts digits.max
puts "#{digits.reject { |i| i < 5 }}"

# ranges as conditions
# NOTE: regexp can be declared like this `/expression/`
# while gets
#   print if /start/../end/
# end
# print if /start/ =~ $_../end/ =~ $_ while gets
## case statements
score = 70
result = case score
         when 0..40 then 'Fail'
         when 41..60 then 'Pass'
         when 61..70 then 'Pass with Merit'
         when 71..100 then 'Pass with Distinction'
         else 'Invalid Score'
         end

puts result

# ranges as intervals
puts (1..10) === 5  # checks if 5 falls in the interval [1-10]
puts ('a'..'j') === 'c'
puts ('a'..'j') === 'z'
