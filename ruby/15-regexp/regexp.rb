#! /usr/bin/ruby -w

line1 = 'Cats r smarter than dogs'
line2 = 'Dogs also like meat'

# INFO: regexps are used to match/search string literals
puts 'line1 contains cats' if line1 =~ /cats(.*)/i
# NOTE: the matching is made using the operator `=~`
# NOTE: the following i is a modifier for ignore case
puts 'line2 contains dogs' if line2 =~ %r!Dogs(.*)!
# NOTE: this is the general delimited regexp `%r`, it is useful if the regexp
# itself contains forward slashes (/)

# modifiers
## i: ignore case
## o: perform #{} interpolations once
## x: ignore whitespace & allow comments
## m: match multiple lines, considers newlines as normal characters
## u,e,s,n: interpret the regexp as Unicode, EUC, SJIS, ASCII

# NOTE: control/meta character can be escaped in regexps with backslash
# ^, \A matches start of line
puts line1[/^Cats/um], line1[/\A\w+/]
# $, \Z matches end of line
puts line1[/dogs$/im], line1[/\w+\Z/], line1[/\w+\z/]
# . matches any character except newline, (w/ newline if specified by m)
puts line1[/a./]
# [...] matches any single char inside
puts line1[/[aeiou]/]
# [^...] matches any single char not inside
puts line1[/[^aeiou]/]
# * matches 0 or more of the preceding token
puts line1[/r*/]
# + matches 1 or more of the preceding token
puts line1[/h+/]
# ? matches 0 or 1 of the preceding token
puts line1[/[A-Z]?/]
# {n} matches exactly n of the preceding token
puts line1[/\w{4}/]
# {n,} matches n or more of the preceding token
puts line1[/\w{4,}/]
# {n,m} matches n at least, m at most of preceding token
puts line1[/\w{4,7}/]
# a|b matches either a or b
puts line1[/a|o\w+/]
# (...) match grouping w/ capture
puts line1[/(\w+)/]
# (?:...) non-capturing match grouping
puts line1[/(?:\w+)/]
# (?m) toggles modifier (m) on temporarily
puts line1[/(?i)cats/]
# (?-m) toggles modifier (m) off temporarily
puts line1[/(?-i)dogs/i]
# (?m:t) toggles modifier (m) on temp for token (t)
puts line1[/(?i:DOGS)/]
# (?-m:t) toggles modifier (m) off temp for token t
puts line1[/(?-i:Cats)/i]
# (?#...) syntax for comment
puts line1[/(?#comment).+/]
# (?=...) positive lookahead
puts line1[/n(?=\s)/]
# (?!...) negative lookahead
puts line1[/r(?!\s)/]
# (?>...) matches pattern, disallows backtracking
puts line1[/(?>.+)dogs/]
# asserts position @ last match
puts line1[/\G\w+/]
# \b matches boundary for word
puts line1[/\b\w\w+\b$/]
# \B matches non-word boundary
puts line1[/\Ba\w?\B/]
# using \1..\9 matches grouped regexps
# *? is non-greedy repetition, * is greedy repetition
