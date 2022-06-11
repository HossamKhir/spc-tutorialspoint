#! /usr/bin/ruby -w

for i in 0..5
  if i > 2
    break # break statement exits the most inner loop
  elsif i < 2
    next  # next statement jumps to the next iteration in the loop
  elsif i == 2
    puts "redoing: value\t#{i}"
    redo  # redo restarts the current iteration
  end

  puts "value is\t#{i}"
end
