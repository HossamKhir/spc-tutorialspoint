#! /usr/bin/ruby -w

print <<EOF
  This is the first way of creating
  here documents, i.e. multiple line string
EOF

print <<"EOF"
  This is the second way of creating
  here documents, i.e. multiple line string
EOF

print <<`EOF`   # execute command
  echo hi there
  echo lo there
EOF

print <<"foo", <<"bar" # stacking here docs
    I said foo
foo
    I said bar
bar
