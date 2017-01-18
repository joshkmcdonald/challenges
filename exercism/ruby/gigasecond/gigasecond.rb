module BookKeeping
  VERSION = 5 # Where the version number matches the one in the test.
end

class Gigasecond
  def self.from(time)
    gigsec = 10 ** 9
    time + gigsec
  # Time.utc(year, month, day, hour, minute, second)
  end
end