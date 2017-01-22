module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Prime

  def self.nth(nth_prime)
    num = nth_prime * 100
    prime_array = (0..num).to_a
    prime_array[0] = nil
    prime_array[1] = nil

    raise ArgumentError if nth_prime == 0

    prime_array.each do |x|
      next unless x
      sqrd = x*x
      break if sqrd > num

      sqrd.step(num, x) do |y|
        prime_array[y] = nil
      end
    end
    prime_array.compact!
    return prime_array[nth_prime-1]
  end
end