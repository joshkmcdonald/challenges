module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Pangram
  def self.pangram?(phrase)
    ('a'..'z').all? { |l| phrase.downcase.include?(l)}
  end
end
