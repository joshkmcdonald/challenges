# Write a method that takes a list of strings as input from the user and prints them, one per line, in a rectangular frame.

# list = ["Hello", "World", "in", "a", "frame"]
puts "Enter a list of words separated by spaces"
list = gets.chomp.split


def longest_word_length(array)
  longest_word = 0

  array.each do |word|
    if word.length > longest_word
      longest_word = word.length
    end
  end

  longest_word
end



def list_in_a_frame(array)
  num = longest_word_length(array)

  puts "*" * (num + 4)

  array.each do |word|
    puts "* #{word}#{(" ") * (num - word.length)} *"
  end

  puts "*" * (num + 4)
end


list_in_a_frame(list)

