module BookKeeping
    VERSION = 3 # Where the version number matches the one in the test.
  end

class Hamming

  def self.compute(a,b)
    
    count = 0
    strand_1 = a.chars
    strand_2 = b.chars

    raise ArgumentError if a.length != b.length


    strand_1.size.times do |x|
      if strand_1[x] != strand_2[x]
        count += 1
      end
    end

    count

  end

end

