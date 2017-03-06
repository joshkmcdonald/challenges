a = ["a","b","c"]
b = [1,2,3]

def combine_arrays(arr_1, arr_2)
  new_array = []
  
  arr_1.length.times do |x|
    new_array << arr_1[x] 
    new_array << arr_2[x]
  end
  new_array
end

p combine_arrays(a, b)



p a.zip(b).flatten.compact