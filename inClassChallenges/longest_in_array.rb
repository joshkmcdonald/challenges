# Create a method that given an array returns the largest and smallest ELEMENT.

num_arr = [1, 50, 5, 0, -12, 1000, 12]
arr = %w(The quick brown fox jumps over the lazy dog)


def printSmallandLarge(arr)
  arr.sort!
  p num_arr.first
  p num_arr.last
end



def largest(array)
  array.min
end

def smallest(array)
  array.max
end

p largest(num_arr)
p smallest(num_arr)



p arr.max { |x,y| x.size <=> y.size }
p "test"
p num_arr.max { |x,y| x <=> y }
p num_arr.min { |x,y| x <=> y }


# maps an array of strings to an array of numbers based on the length of each string
# Uses .max to find largest integer in new_array
# Pushes longest strings into an empty array and returns that array
def largest_string(arr)

  new_arr = arr.map {|x| x.length}
  empty_arr = []
  num = new_arr.max

  # .times starts from 0, so this was used to grab strings from correct position in the array.
  new_arr.length.times do |x| 
    if new_arr[x] == num
      empty_arr.push(arr[x])
    end
  end

  empty_arr 

end

p largest_string(arr)



