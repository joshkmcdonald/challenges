# Given two strings, write a program that efficiently finds the longest common subsequence between the two strings.

str_1 = "The quick brown fox jumps over the lazy dog asdflkjasdf;lkj"
str_2 = "The dog jumps asdflkjasdf;lkj"

def longest_word(array)
  longest = ""
  num = 0

  array.each do |word|
    if word.length > num
      longest = word
    end
  end

  longest
end

# def longest_word(array)
#   array.max { |a, b| a.length <=> b.length }
# end

def compare_arrays(arr_1, arr_2)
  arr = []

  arr_1.each do |x|
    arr_2.each do |y|
      arr << x if x == y
    end
  end
  p longest_word(arr)
end

compare_arrays(str_1.split(" "),str_2.split(" "))