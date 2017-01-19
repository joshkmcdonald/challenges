module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

require 'pry'

class Integer
  def to_roman
    int = self
    arr = []

    roman = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    } 

    roman.each do |key, val|
      next if key > int

      arr << val
      int -= key
      redo
    end

    arr.join
  end
end
