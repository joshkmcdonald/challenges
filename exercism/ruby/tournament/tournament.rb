require 'pry'

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Tournament

  def self.tally(input)
    @@hash = Hash.new

    @@input = input
    @@input = input_to_array
    build_hash
    fill_hash_values

    @@hash = @@hash.to_a.sort_by {|team| team[1]["P"] }.reverse
    
    format_hash
  end


  private


  def self.input_to_array
    arr = Array.new
    @@input.split("\n").each do |x|
      arr << x.split(';')
    end
    arr
  end

  def self.build_hash
    @@input.each do |x|
      @@hash[x[0]] = {
        "MP"=>0,
        "W"=>0,
        "D"=>0,
        "L"=>0,
        "P"=>0
      }

      @@hash[x[1]] = {
        "MP"=>0,
        "W"=>0,
        "D"=>0,
        "L"=>0,
        "P"=>0
      }
    end
  end

  def self.fill_hash_values
    @@input.each do |x|
      case x[2]
      when 'win'
        @@hash[x[0]]['MP'] += 1
        @@hash[x[0]]['P'] += 3
        @@hash[x[0]]['W'] += 1
        @@hash[x[1]]['MP'] += 1
        @@hash[x[1]]['L'] += 1
      when 'draw'
        @@hash[x[0]]['MP'] += 1
        @@hash[x[0]]['P'] += 1
        @@hash[x[0]]['D'] += 1
        @@hash[x[1]]['MP'] += 1
        @@hash[x[1]]['P'] += 1
        @@hash[x[1]]['D'] += 1
      when 'loss'
        @@hash[x[1]]['MP'] += 1
        @@hash[x[1]]['P'] += 3
        @@hash[x[1]]['W'] += 1
        @@hash[x[0]]['MP'] += 1
        @@hash[x[0]]['L'] += 1
      end
    end
  end

  def self.format_hash
    string = String.new

    string << "Team                           | MP |  W |  D |  L |  P\n"

    @@hash.each do |x|
      string << x[0] + " " * (31 - x[0].length)
      x[1].each do |key, value|
        string << "|  #{value.to_s} "
      end
      string.rstrip!
      string << "\n"
    end
    string
  end
end