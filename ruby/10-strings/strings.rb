#! /usr/bin/ruby -w

# use single quotes w/ literals that doesn't change
# NOTE: single quote strings only understand escaped single quote & escaped
# backslash; meaning escaped characters are preserved in single quote, but
# interpreted in double quote

# expression substitution
# using the syntax `#{<expression>}`, the evaluated expression will be
# concatenated with the string
x, y, z = 12, 36, 72
puts "x\t->\t#{x}"
puts "x+y\t->\t#{x+y}"
puts "average\t->\t#{(x+y+z)/3.0}"

# general delimited strings
# literals can be created between matching/closing symbols, by prepending the 
# literal w/ `%` character
fun = 'fun'
puts %#Ruby is fun.#
puts %[Ruby is #{fun}.]
puts %$Ruby is #{fun}.$
puts %@Ruby is #{fun}.@
puts %&Ruby is #{fun}.&
puts %^Ruby is #{fun}.^
puts %:Ruby is #{fun}.:
puts %.Ruby is #{fun}\..
puts %-Ruby is #{fun}.-
puts %|Ruby is #{fun}.|
puts %%Ruby is #{fun}.%

# NOTE: there are special characters to use w/ that have special meaning in the 
# general delimited string
# `%Q` is the same as double quote
# `%q` is the same as single quote
# `%x` is the same as backtick (`) statement, allows to call system programmes
puts `ls`
puts %x!ls!
puts %x#ls#
puts %q!is Ruby #{fun}?!  # notice how the substitution is not working, '
puts %Q!is Ruby #{fun}?!  # notice how the substitution works here, "

# escape characters
puts  "bell/alert\a:", "backspace\b:", "ctrl+c\cc\C-c:", "escape\e:",
      "formfeed\f:", "meta+ctrl+s\M-\C-s:", "newline\n:", "octal notation\024:",
      "carriage return\r\n:", "space\s:", "tab\t:", "vertical tab\v:",
      "hexadecimal\x0f"

# string built-in methods
# format specification
## integer
puts  "binary  5\t%04b\nbinary 15\t%04B" % [5, 15],
      "0xA4 -> %d decimal\n0x4A -> %i integer\n0x44 -> %u decimal" % [0xA4, 0x4A, 0x44],
      "octal 10\t%o" % 10, "15 -> %02x hexadecimal\n29 -> %X hexadecimal" % [15, 29],
      "=\n%+d\n% d\n%#o\n%+o\n%+x\n%#x\n%#X\n%+b\n%#b\n%#B\n=" % Array(1..10)

## float
PI = 3.141596
puts  "3.141596 in exp form w/ 2 places precision\t%.2e" % PI,
      "3.141596 in exp form w/ 4 places precision\t%.4E" % PI,
      "3.141596 rounded to 3 places\t%.3f" % PI,
      "%.4g\t%.4G" % [PI, PI],
      "%a\t%A" % [PI, PI],
      "=\n%#.0e\n%#.0f\n%#g\n=" % [PI, PI, PI]

## other format
puts  "single character\t%c" % 65, # 65 is ASCII for `A`
      "PI.inspect\t%p" % PI,
      # contribution of string is 8 characters only
      "string format\t%8.8s" % 'Hello, World!',
      "printing a percentage sign %%" # no argument needed

small_string = 'hello, world!'
big_string = 'Hello, World!'
puts "Hello\n" * 3      # prints `Hello\n` 3 times
puts 'Concat ' + 'me!'  # concatenation
puts 'I said: '.concat(big_string)
# NOTE: using integers in range 0..255 (ASCII) transforms into the character
puts 'PI=' << 65        # 65 is ASCII for `A`
puts 'String object ' << 'Object'
puts big_string <=> small_string  # comparison, return -1, 0, or 1
# if other object isn't a string, returns false, returns true only when 
# s1 <=> s2 = 0
puts big_string == small_string
# regex matching, returns the position of start of match, or nil if not found
puts big_string =~ /or/
puts small_string.capitalize  # capitalise (make 1st letter capital)
small_string.capitalize!      # capitalisation in place
puts small_string
puts big_string.casecmp small_string  # case-insensitive comparison
puts big_string.center(4), big_string.center(32), big_string.center(32, '.')
small_string += "\n"
puts small_string.chomp # removes the record separator, `\n` in this case
small_string.chomp!     # removing the record separator in place
puts small_string.chop  # removes the last character in string
small_string.chop!     # removes the last character in place
puts big_string.count('o')  # counts sets of characters
puts big_string.count('lo', 'll')
# returns a new string that has all intersection w/ argument removed
puts big_string.delete('o') 
small_string.delete!(',') # same as delete, but in place
puts small_string
# applies one-way hash encryption, using salt as argument
puts big_string.crypt('AA')
puts big_string.downcase  # returns an all lower-case string
puts big_string.upcase    # returns an all upper-case string
# big_string.downcase!  # same as downcase, only in place
puts "Alert\a\n".dump
# big_string.each(',') { |substr| puts substr }
# returns each byte from string as number
big_string.each_byte { |byte| puts byte }
quote = "The only morality in a cruel world,\nis chance.\nUnbiased.\nUnprejudiced.\nFair."
# \n is the default separator, separates the string as lines on separator, and 
# passes them to the block
quote.each_line('\n') { |line| puts line }
puts quote.empty? # checks if it is an empty string
# 2 strings are equal when they are of the same length, holding the same content
puts big_string.eql? small_string
# returns a string where the pattern matches are replaced by string
# NOTE: to use meta-characters, one must use RegExp, strings won't interpret them
puts big_string.gsub(/[aeiou]/, '#')
puts small_string.gsub(/[a-z]/, &:upcase)
# same as small_string.gsub(/[a-z]/) { |match| match.upcase }
# same as gsub, but in place, returns the string on success, nil if no replacement
small_string.gsub!(/[A-Z]/, &:downcase)
puts small_string
# indexing & slicing
puts  big_string[0],
      big_string[-2], # get character @ index
      big_string[1, 4],     # starting @ index (1), get length (4) characters
      big_string[5...9],    # get characters indexed by the range [5,9[
      big_string[/e.*o/],   # get characters matching the given RegExp
      # get matching characters w/ RegExp, starting from index (0)
      big_string[/\w+/, 0],
      big_string['World']   # get matching substring
# replace characters in string
small_string[0] = 'g'
puts small_string
small_string[1] = 'ood' # raises an IndexError if out of range
puts small_string
small_string[4, 3] = ' morning,'  # raises IndexError if out of range
puts small_string
small_string[13..14] = ' indeed'  # raises RangeError if range is incompatible
puts small_string
small_string[/orld/] = ' earthlings'  # silently ignores assignment on failure
puts small_string
# NOTE: these approaches above -^ are synonyms of str.slice!
puts big_string.hash  # returns the hash from the string
# returns the number corresponding to the hexadecimal, 0 on fail
puts '0x75AF'.hex
# checks if substring or character in string
puts big_string.include?('el'), big_string.include?('A')
# returns the starting position where a substring, or RegExp is found, nil if
# not found, 2nd argument is the offset from which search starts
puts big_string.index('World'), big_string.index(/[A-Z]\w+/, 4)
# rindex is the same operation, but it searches for the 1st occurrence from the
# right (i.e. the last occurrence)
# inserts substring into string, before the character in the specified index
small_string.insert(0, 'let me start by saying: ')
puts small_string
puts big_string.inspect # returns printable string, w/ escaped characters if any
cat = 'cat'.to_sym      # also .intern
puts cat == :cat
puts quote.length, quote.size # get the length of the string
# left adjusts the string with pad, if given longer length, otherwise return 
# the original string
puts big_string.ljust(24, '*')
puts big_string.rjust(24, '=')  # same as ljust, but for right
small_string = "\n\s\t" + small_string + "\t\s\n"
# returns a string w/ leading whitespace removed
puts small_string.lstrip.inspect
# rstrip removes the trailing white space
puts small_string.rstrip.inspect
# strip removes both leading & trailing whitespace
puts small_string.strip.inspect
small_string.lstrip!  # removes leading whitespace, in place
small_string.rstrip!  # removes trailing whitespace, in place
small_string.strip!   # removes both leading & trailing whitespace, in place
puts small_string.match(/ea.*h/)  # returns the matched string, or nil otherwise
# NOTE: match will convert the argument to RegExp if it was a string
puts '012'.oct  # return the octal value if successful, 0 otherwise
small_string.replace big_string.downcase  # replaces content of string w/ another
puts small_string
puts small_string.reverse # returns the string reversed
small_string.reverse!     # reverses the string in place
small_string.reverse!
puts small_string.scan(/\w\W/)  # returns all matches for the pattern
small_string.scan(/\b(\w)(\w+)\b/) { |match| puts "#{match}"}
# NOTE: scan can interpret strings as RegExps
# splits the string on a given delimiter, w/ optional limiting
puts "#{small_string.split ','}"
# INFO: if delimiter is a space, the string is split on whitespace
# INFO: if delimiter is a string, it is used as the delimiter
# INFO: if delimiter is a RegExp, string is divided on matches
# INFO: if delimiter is omitted, the default is using $;, which is nil by
# default, leading to splitting on whitespace
puts big_string.squeeze # w/o argument removes repeated consecutive characters
puts small_string.sub('hello', '\'sup') # substitute the 1st occurrence w/ substr
puts small_string.sub('world', &:upcase)
# similar to 
# puts small_string.sub('world') { |match| match.upcase }
small_string.sub!('hello', '\'sup') # substitution in place
puts small_string
puts quote.next
# also .succ, returns the successor for the string, the string that comes after
# the current one, basically, the last alphabetical character is replaced by the
# next character, if the last char is `z`, then the previous character is
# incremented, if the `z` is the 1st char, an `a` char is appended to the string
small_string.next!  # same as .next, but in place
puts small_string
puts big_string.swapcase  # inverts the uppercase to lowercase, & vice-versa
small_string.swapcase!    # same as swapcase, but in place
puts small_string
# converts the content of the string to float, returns 0.0 on failure
puts '3.141596'.to_f
# interprets the string as integer of given base, default is 10 (decimal)
puts '12'.to_i, '12'.to_i(8)
# translate, returns a copy of string where the characters from the 1st argument
# are replaced by the characters in the 2nd argument
puts small_string.tr('E', 'D')
# NOTE: if the 2nd is shorter than the 1st, then it is padded by the last
# character in 2nd argument
small_string.tr!('E', 'D')  # same as .tr, but in place
puts small_string
# same as .tr, but removes duplicates (if any) resulting from replacement
puts small_string.tr_s('\'', 'S')
small_string.tr_s!('\'', 'S') # same as .tr_s, but in place
puts small_string
'a8'.upto('b6') { |s| print s, ' : ' }
