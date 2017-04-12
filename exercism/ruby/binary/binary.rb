module BookKeeping
  VERSION = 3
end

class Binary

  def self.to_decimal(binary_number)
    binary_array = binary_number.to_s.split('')
    binary_length = binary_array.length
    decimal = 0

    is_binary?(binary_array)

    binary_array.each do |num|
      decimal += num.to_i*2**(binary_length - 1)
      binary_length -= 1
    end

    decimal
  end

  def self.is_binary?(binary_array)
    binary_array.each do |num|
      raise ArgumentError unless num == "1" || num == "0"
    end
  end

end
