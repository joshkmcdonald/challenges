module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Phrase
  
  def initialize(string)
    @new_string = string
    @h = {}
  end

  def word_count
    arr = @new_string.gsub(/:|\.|\!|\&|\@|\$|\%|\^|\,/, " ").downcase.split
  
    arr.each {|x| x.delete!(x[0]) if x[0] == "'"}
    
    arr.length.times do |x|
      if @h.has_key?(arr[x])
        @h[arr[x]] += 1
      else
        @h.store(arr[x], 1)
      end
    end
  @h
  end
end

