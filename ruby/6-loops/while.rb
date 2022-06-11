#! /usr/bin/ruby -w

$i = 0
$num = 5

# NOTE: do keyword is optional
# while $i < $num do
while $i < $num
  puts("inside the loop. i =\t#{$i}")
  $i += 1
end

# while modifier
$i = 0
# NOTE: this block is executed once before evaluation of conditional
# NOTE: more w/ rescue & ensure
begin
  puts("inside the loop. i=\t#{$i}")
  $i += 1
end while $i < $num
