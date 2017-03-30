module Fizzbuzz
  
  class Game
    attr_accessor :numbers, :fizzbuzz_hash
    
    def initialize
      @numbers = (1..100)
      @fizzbuzz_hash = {
                        "fizzbuzz"=> Array.new,
                        "buzz"=> Array.new,
                        "fizz"=> Array.new,
                        "misfit"=> Array.new
      }
    end

    def store
      @numbers.each do |num|
        if num % 5 == 0 && num % 3 == 0
          @fizzbuzz_hash["fizzbuzz"] << num
        elsif num % 5 == 0
          @fizzbuzz_hash["buzz"] << num
        elsif num % 3 == 0  
          @fizzbuzz_hash["fizz"] << num
        else
          @fizzbuzz_hash["misfit"] << num
        end
      end
    end
    
  end
end


game = Fizzbuzz::Game.new
game.store
p game.fizzbuzz_hash
puts "__________________________"
puts "fizzes"
p game.fizzbuzz_hash['fizz']
puts "__________________________"
puts "buzzes"
p game.fizzbuzz_hash['buzz']
puts "__________________________"
puts "fizzbuzzes"
p game.fizzbuzz_hash['fizzbuzz']
puts "__________________________"
puts "misfitzzes"
p game.fizzbuzz_hash['misfit']

