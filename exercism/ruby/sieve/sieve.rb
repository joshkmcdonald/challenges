# require 'prime'
require 'pry'

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Sieve

  def initialize(num)
    @num = num
    @prime_array = (0..@num).to_a
    @prime_array[0] = nil
    @prime_array[1] = nil
  end

  def primes
    @prime_array.each do |x|
      next unless x
      sqrd = x*x
      break if sqrd > @num

      sqrd.step(@num, x) do |y|
        @prime_array[y] = nil
      end
    end
    @prime_array.compact
  end

  # def primes
  #   Prime.each(@num) do |prime|
  #     @num_array << prime
  #   end 
  #   @num_array
  # end

end
