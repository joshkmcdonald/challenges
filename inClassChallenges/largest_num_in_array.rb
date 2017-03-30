require 'pry'


def larger_closest_integer(index)
  arr = [1,4,3,2,5,7]
  counter = 0
  num = 0

  while arr[index] >= arr[index + counter] || arr[index] >= arr[index - counter]
    counter += 1

    # binding.pry
    if arr[index] < arr[index + counter] || arr[index] < arr[index - counter]
      if index - counter < 0
        num = arr[index + counter]
      elsif arr[index + counter] > arr[index - counter]
        num = arr[index + counter]
      else
        num = arr[index - counter]
      end
    end
  end
  num
end

p larger_closest_integer(3)