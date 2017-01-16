# 1.upto(100) do |x|
#   if x % 3 == 0 && x % 5 == 0
#     puts "FizzBuzz"
#   elsif x % 5 == 0
#     puts "Buzz"
#   elsif x % 3 == 0
#     puts "Fizz"
#   else
#     puts x
#   end
# end

# array = []


# 1.upto(100) do |x|
#   if x % 3 == 0 && x % 5 == 0
#     array << "FizzBuzz"
#   elsif x % 5 == 0
#     array << "Buzz"
#   elsif x % 3 == 0
#     array << "Fizz"
#   else
#     array << x
#   end
# end




# def print_array(array)
#   array.each do |x|
#     puts x
#   end
# end

# print_array(array)



h = Hash.new{}

1.upto(100) do |x|
  if x % 3 == 0 && x % 5 == 0
    h[x] = "FizzBuzz"
  elsif x % 5 == 0
    h[x] = "Buzz"
  elsif x % 3 == 0
    h[x] = "Fizz"
  else
    h[x] = x
  end
end


h.each do |key, value|
  puts "#{key}:#{value}"
end

p h
