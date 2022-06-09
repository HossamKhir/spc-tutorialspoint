#! /usr/bin/ruby -w

# Creating arrays
## using the new constructor
arr1 = Array.new
arr2 = Array.new(24)    # can define the length of array
# NOTE: providing a value for all element
arr3 = Array.new(4, 'mac')
# NOTE: using block for populating an array
arr4 = Array.new(8){|e| e = e * 2}

## using brackets
nums = Array.[](1, 2, 3, 4, 5)
o_num = Array[1, 2, 3, 3, 3]

## using kernel module in core ruby
range = Array(0..9) # creates an inclusive range of 0 to 9

## also valid using only brackets
brackets = ['square', 'brackets']

# INFO: length or size of array
puts arr1.size, arr2.length

# Built-in methods
num = range.at(4)
puts num
puts "#{nums & o_num}"      # intersection
puts "#{o_num * 3}"         # repeat array
puts "#{o_num.join('-')}"
puts "#{o_num * '-'}"       # equivalent to "-".join(o_num)
puts "#{range + o_num}"     # concat
puts "#{range.concat(o_num)}"     # concat
puts "#{nums - o_num}"      # nums difference o_num
puts "#{arr3 <=> brackets}" # comparison (case sensitive), returns -1, 0, 1
puts "#{o_num | range}"     # union, drops duplicates
puts "#{o_num.push(-4)}"
puts "#{o_num << -2}"       # append, returns the array
puts "#{arr3 == arr3}"      # equal only if both of same length, and each object
                            # equals to the corresponding object
idx, len, rng = 2, 3, 2..5  # indexing and slicing
puts "#{range[idx]}\t#{range[idx, len]}\t#{range[rng]}"
puts "#{range.slice(idx)}\t#{range.slice(idx, len)}\t#{range.slice(rng)}"
# slicing in place
puts "#{range.slice!(idx)}\t#{range.slice!(idx, len)}\t#{range.slice!(rng)}"
puts "#{range}"
range[idx] = -idx
puts "#{range}"
range[idx, len] = [-4, -2, 0]
puts "#{range}"
range[rng] = nil            # setting values of index/range
puts "#{range}"
arr4.clear                  # drop all elements
puts "#{arr4}"
# map/collect methods that return a new array after applying block on each el
puts "#{nums.map{|e| e = e**2}}\t#{nums}"
# update the same array w/ map/collect
puts "#{nums.collect!{|e| e = e**2}}\t#{nums}"
puts "#{range.compact}\t#{range}"   # return a new array dropping all `nil`s
puts "#{range.compact!}\t#{range}"  # drop all `nil`s from current array
brackets << "remove me"
puts "#{brackets.delete("remove")}"
puts "#{brackets.delete("remove"){"not found"}}"
puts "#{brackets.delete("remove me")}"
puts "#{range.delete_at(0)}"            # popping element at index
puts "#{range.delete_if{|e| e == nil}}" # only remove what meets the condition
puts "#{range.each {|e| e % 2}}"
# reverse each is like each but traverses backwards
puts "#{range.reverse_each {|e| e % 2}}"
puts "#{range.each_index {|idx| -idx}}" # like each, but passing the index instead
puts arr4.empty?
puts arr3.eql? arr4
puts arr3.eql? Array.new(4, "mac")
puts arr3.fetch(3)
# puts arr3.fetch(4)  # should throw an IndexError
puts arr3.fetch(4, 'default')
puts arr3.fetch(4){|idx| "#{idx} was not found"}
arr2.fill('arr2')       # fills the entire array
puts "#{arr2}"
arr2.fill(nil, 4)       # fills the array from the index 4 to the end w/ nil
puts "#{arr2}"
arr2.fill(-2, 8, 10)    # fills 10 positions from index 8 with -2
puts "#{arr2}"
arr2.fill('S', 4..7)    # fills the range [4-7] with S
puts "#{arr2}"
arr2.fill {|i| (-1 ** i)}   # the same as fill, but the value is the result of block
puts "#{arr2}"
# fills the array starting @ index 18 to the end by the cube of the index
arr2.fill(18) {|i| i ** 3}
puts "#{arr2}"
# fills 4 positions from index 20 with the remainder of subtracting 1024 from
# value @ index i
arr2.fill(20, 4) {|i| 1024 - arr2[i]}
puts "#{arr2}"
# fills the range of [0-12] with the reciprocal of the index, a small value added
# to avoid Zero division
arr2.fill(0..12) {|i| 1.0/(i+1e-9)}
puts "#{arr2}"
puts "#{arr3.first}"    # get the first element, returns nil if empty
# get the first 6 elements, returns empty array if empty, the entire array if 
# shorter than the number requested
puts "#{arr3.first(6)}"
# last like first
puts "#{arr3.last}"
puts "#{arr3.last(6)}"
ndarray = [
    Array(0..4),
    Array(5..8),
]
puts "#{ndarray.flatten}"   # returns the flattened 1D array of the array
puts "#{ndarray.flatten!}"  # flatten in place
arr2.freeze                 # freezes the array
puts arr2.frozen?           # checks if the array is frozen
puts arr2.hash              # calculates the hash of array
puts arr3.include? 'mac'    # checks if the array contains the object
# returns the index of 1st occurrence of object, nil if not found
puts arr3.index('mac')
puts "#{arr3.index('max')}"
# returns the index of the last occurrence of object, nil if not found
puts arr3.rindex('mac')
arr3.insert(2, 'max')       # inserts object ('max') at index (2)
puts "#{arr3}"
puts arr3.inspect           # returns a printable version of the array
puts "#{arr3.pop}\t#{arr3}" # returns last element & deletes it, nil if empty
# returns a new array where all elements that failed the block remained
puts "#{arr2.reject{|el| 1 == el % 2}}"
# updates the array in place
puts "#{arr3.reject!{|el| el == 'max'}}"
puts "#{arr4.replace(arr3)}"    # replace content of an array w/ another
puts "#{ndarray.reverse}"   # returns the reverse of the array
puts "#{ndarray.reverse!}"  # reverses the array in place
# returns array w/ only elements that return true from block
puts "#{ndarray.select {|el| 0 == el % 2}}"
puts arr4.shift # returns the 1st element, shifting the rest of the array
puts "#{arr4}"
# sorting the array
puts "#{ndarray.sort}"
puts "#{ndarray.sort { |a, b| b - a}}"
ndarray = [
    Array(0..3),
    Array(4..7),
]
puts "#{ndarray.transpose}"     # transposes the array
puts "#{arr3.uniq}"             # returns array of unique values
arr4.uniq!                      # drops duplicates in place
arr4.unshift("max")             # add elements to the start of the array
puts "#{arr2.values_at(2..8)}"  # return elements defined by selector
# arr4.zip("argument")
# puts "#{arr4}"
