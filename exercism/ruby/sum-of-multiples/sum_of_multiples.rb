require 'pry'

class SumOfMultiples

  def initialize(*args)
    @args = args
    @arg_size = args.length
    @sum = 0
  end

  def to(num)
    (1...num).each do |n|
      @args.each do |arg|
        if n % arg == 0
          @sum += n
          break
        else
          next
        end
      end
    end
    @sum 
  end

end