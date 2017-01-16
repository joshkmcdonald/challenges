puts "Please provide a positive integer"
num = gets.chomp.to_i
puts "The sum of the numbers 1 to #{num}:"

num.times do |x|
  num += x
end

puts num

