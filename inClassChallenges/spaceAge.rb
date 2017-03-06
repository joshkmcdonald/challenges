# Write a program that, given an age in seconds, calculates how old someone is in terms of a given planets solar years.

# Given an age in seconds, calculte how old soeone would be on:

# earth: orbital period is 365.25 Earth days, or 31557600 seconds
# mercury: orbital period 0.2408467 Earth years
# venus: orbital period 0.61519726 Earth years
# mars: orbital period 1.8808158 Earth years
# jupiter: orbital period 11.862615 Earth years
# Saturn: orbital period 29.447498 Earth years
# uranus: orbital period 84.016846 Earth years
# neptune: orbital period 164.79132 Earth years

# seconds to earth years
# seconds / 60 for minutes / 60 for hours / 24 for days / 365.25 for earth years

def seconds_to_earth_years(seconds)
  seconds.to_f / 60 / 60 / 24 / 365.25
end

def age_on_various_planets(seconds)
  earth_years = seconds_to_earth_years(seconds)

  puts "Age on Earth:"
  p earth_years

  puts "Age on Mercury:"
  p earth_years / 0.2408467

  puts "Age on Venus:"
  p earth_years / 0.61519726

  puts "Age on mars:"
  p earth_years / 1.8808158

  puts "Age on Jupiter:"
  p earth_years / 11.862615

  puts "Age on Saturn:"
  p earth_years / 29.447498

  puts "Age on Uranus:"
  p earth_years / 84.016846

  puts "Age on Neptune:"
  p earth_years / 164.79132
end

age_on_various_planets(31557600)