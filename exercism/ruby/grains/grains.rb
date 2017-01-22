module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Grains

  def self.total
    @sum = 0
    self.square(64)
    @sum
  end 

  def self.square(num)
    raise ArgumentError if num <= 0 || num >= 65
    grain_array = [1]

    if num == 1
      num
    else
      (num-1).times do |x|
        grain_array << (grain_array[x] * 2)
      end

      @sum = grain_array.sum
      grain_array[(num-1)]
    end
  end
end

