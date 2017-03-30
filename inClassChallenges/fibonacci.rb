fib_array = [1,2]

puts "Please provide an integer greater than 2"
input = gets.chomp.to_i

def fibonacci(arr, input)
  while arr.last < input
    arr << (arr[-1] + arr[-2])
  end
  print_fibonacci(arr, input)
end


def print_fibonacci(arr, input)
  if arr.last > input
    arr.pop
    p arr
    p arr.sum
  else
    p arr
    p arr.sum
  end
end

fibonacci(fib_array, input)

