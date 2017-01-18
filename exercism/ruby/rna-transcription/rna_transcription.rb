module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end


class Complement

  def self.of_dna(strand)
    arr = strand.chars

    arr.length.times do |x|
      if arr[x] == "G"
        arr[x] = "C"
      elsif arr[x] == "C"
       arr[x] = "G"
      elsif arr[x] == "T"
        arr[x] = "A"
      elsif arr[x] == "A"
        arr[x] = "U"
      else
        arr = ['']
        break
      end
    end
    arr.join
  end
end
