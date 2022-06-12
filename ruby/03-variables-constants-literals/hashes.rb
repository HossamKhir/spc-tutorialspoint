#! /usr/bin/ruby -w

# hashes in ruby means hash tables
colours = {
  'red' => 0xf00,
  'green' => 0x0f0,
  'blue' => 0x00f
}

colours.each do |key, val|
  print key, ' is ', val, "\n"
end

# INFO: empty hash
# empty = Hash.new # or
empty = {}
puts "#{empty}"

# INFO: empty hash w/ default value
# default = Hash.new 'month' # or
default = Hash.new('month')
# it is also possible to use generator blocks as well like
# default = Hash.new {|hash, key| block}
# INFO: a default could be assigned after definition
empty.default = 0xffff

# NOTE: calling a non-existant key of hash returns the default (nil if not specified)
puts "#{default[0]}"

# INFO: initial values
hash = Hash['a' => 100, 'b' => 200]
puts "#{hash['a']}"
puts "#{hash['b']}"

# NOTE: any ruby object can pass as key, yes, even arrays

# Built-in methods
puts "#{hash.keys}"     # collects the keys of the hash into array
puts "#{hash == hash}"  # checks if hashes are equal, same key:value pairs
puts "#{colours == hash}"
hash['c'] = 300         # assign a new key:value pair or
hash.store('e', 500)    # another syntax
puts "#{hash}"
colours.clear           # drops all pairs from hash
puts "#{colours}"
hash.delete('c')        # deletes the pair denoted by key (c)
# if the pair is not found, the block is run
hash.delete('e') { |k| puts "#{k} was not found" }

# deleting pairs conditionally
hash.delete_if { |k, v| k == 'b' && v == 200 }
puts "#{hash}"

hash['d'] = 400
# iterating over pairs
hash.each { |k, v| puts "#{k} is #{v}" }
# iterating over keys only
hash.each_key { |k| puts "found #{k}" }
puts empty.empty? # check if the set is empty
# fetches the value of key (b), raises index error if not found
# puts hash.fetch('b')
# fetches the value of key (b), returns default (200) if not found
puts hash.fetch('b', 202)
# fetches the value of key (b), returns the result of block if not found
puts hash.fetch('b') { |k| "#{k} not found" }
# testing for key presence
puts hash.has_key?('a'), hash.include?('b'), hash.key?('c'), hash.member?('d')
# testing for value presence
puts hash.has_value?(400), hash.value?(150)
puts hash.index(400)        # returns the key for value (400), nil if not found
puts hash.inspect           # returns a printable string representation
puts "#{hash.invert}"       # returns an inverted hash, key becomes values, & vice versa
puts hash.length, hash.size # the length of the hash
other = { 'c' => 300, 'd' => -400 }
# merge w/ overriding old values
puts "#{hash.merge(other)}" # also .update method
# merge w/ block
puts "#{hash.merge(other) { |_k, old, new_val| old + new_val }}" # also .update
# use merge! to replace in place
other.merge!(hash)
puts "#{other}"
other.rehash # re-indexing the hash if the values changed after insertion
# returns a new hash where block evaluates to false
puts "#{other.reject { |_k, v| v % 3 == 0 }}"
# change in place using reject
other.reject! { |_k, v| (v % 3).zero? }
puts "#{other}"
empty.replace(other) # replacing contents of `empty` w/ `other`
puts "#{empty}"
# conditional selection of pairs, keys or values using keys and/or values
puts "#{empty.select { |_k, v| v == 400 }}"
puts "#{empty.select { |k, _v| k == 'a' }}"
# returns random key:value pair as 2 element array, removing them
puts "#{empty.shift}\t#{empty}"
puts "#{hash.sort}"   # returns the hash as a sorted 2D array
puts "#{other.to_a}"  # returns the hash as a 2D array
puts hash.to_s        # returns string representation of the hash
puts "#{hash.values}" # returns an array of values
# return values at given keys, non-existant keys return the default
puts "#{hash.values_at('a', 'f')}"
