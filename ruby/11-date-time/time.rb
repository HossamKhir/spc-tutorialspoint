#! /usr/bin/ruby -w

# getting current time
time1 = Time.new
puts "Current time:\t" + time1.inspect

# using synonym
time2 = Time.now
puts "Current time:\t#{time2.inspect}"
puts  time2.year,   # returns the year
      time2.month,  # the month [1, 12]
      time2.day,    # the day [1, 31]
      time2.wday,   # day of week, sunday is 0 [0, 6]
      time2.yday,   # day of the year [0, 364]
      time2.hour,   # clock as 24 style [0, 23]
      time2.min,    # minutes [0, 59]
      time2.sec,    # seconds [0, 59]
      time2.usec,   # microseconds
      time2.zone    # timezone name

# building time objects
puts  Time.local(1995, 5, 2),
      Time.local(2022, 5, 2, 13, 36),
      Time.utc(2022, 5, 2, 13, 36),
      Time.gm(2022, 5, 2, 13, 36, 11)

# transforms the time to array [sec, min, hour, day, month, year, wday, yday,
# isdst, zone]
vals = time2.to_a
p vals

puts Time.utc(*vals) # the asterisk is unpacking the array into args

# returns number of seconds (the integer representation of time object)
puts time2.to_i
puts Time.at(time2.to_i)  # inverse of to_i
puts time2.to_f           # to get microseconds as well

# time zones, day light savings
puts  time2.zone,       # returns the zone of the time object
      time2.utc_offset, # returns the offset from utc, in seconds
      time2.isdst,      # day light savings
      time2.utc?,       # checks if the time zone is UTC
      time2.localtime,  # convert to local time
      time2.gmtime,     # convert to GMT/UTC time
      time2.getlocal,   # returns a time object in local time
      time2.getutc      # return a time object in UTC time

# formatting time/date
puts  time2.to_s,
      time2.ctime,
      time2.localtime,
      time2.strftime('%Y-%m-%d %H:%M:%S')

# time arithmetic
puts time2 + 10, time2 - 10 # timestamp +/- 10 seconds
puts time2 - time1          # difference in seconds
