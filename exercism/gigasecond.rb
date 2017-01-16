# Write a program that calculates the moment when someone has lived for 10^9 seconds.

# A gigasecond is 109 (1,000,000,000) seconds.


# secondsPerDay = 24 * 60 * 60
# daysPerGigasecond = gigasecond / secondsPerDay #11574 days == 31 years

gigasecond = 10 ** 9

# Time.new(year, month, day, hour, minute, second)
date_of_birth = Time.new(1987, 5, 14, 22, 5, 03)

puts date_of_birth + gigasecond


