
puts "This program will find the sum of the odd"
puts "numbers between one and the number you provide."

def sum_of_odds

  puts "Please provide a positive integer:"
  n = gets.chomp.to_i

  if n.integer? && n.positive?
    num_array = (1..n)

    puts "This is a list of the odd numbers in the range you provided"
    p num_array.select {|x| x if x.odd? }
    puts "and this is the sum of that list:"
    p num_array.select {|x| x if x.odd? }.sum
  else
    puts "You provided either a non integer or a negative number."
    sum_of_odds
  end
end

sum_of_odds