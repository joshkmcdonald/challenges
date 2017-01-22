module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

class Year
  def self.leap?(yr)
    if yr % 400 == 0
      'true'
    elsif (yr % 4 == 0) && (yr % 100 != 0)
      'true'
    else
      false
    end
  end
end