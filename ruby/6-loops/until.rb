#! /usr/bin/ruby -w

# until executes code while conditional is false
$i = 0
$num = 5
# NOTE: do keyword is optional
# until $i > $num do
until $i > $num
  puts("inside the loop. i =\t#{$i}")
  $i += 1
end

# until modifier
$i = 0
# NOTE: the following block is executed once before checking conditional, as 
# long as there are no rescue/ensure blocks
begin
  puts("inside the loop. i =\t#{$i}")
  $i += 1
end until $i > $num
