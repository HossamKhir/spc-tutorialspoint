#! /usr/bin/ruby -w

$age = 5
# NOTE: then is optional
case $age
when 0..2
  puts 'baby'
when 3..6
  puts 'little child'
when 7..12 then
  puts 'child'
when 13..18 then
  puts 'adolescent'
else
  puts 'adult'
end
