module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

class Robot
  @@robot_array = []

  attr_reader:name
  def initialize
    reset
  end

  def reset
    @@robot_array.delete(@name)
    generate
  end

  private

  def generate
    loop do
      @name = ([*('A'..'Z')].sample(2) + 
              [*('0'..'9')].sample(3)).join
      unless @@robot_array.include?(@name)
        @@robot_array << @name
        return
      end
    end
  end
end