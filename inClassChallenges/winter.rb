puts "What is your name"
user_input = gets.chomp
array = ["Jon", "Arya", "Jagen H'Ghar"]


# if (user_input == "Jon" || user_input == "Arya" || user_input == "Jagen H'Ghar")
#   puts "Hi, #{user_input}!"
# else
#   puts "Winter is coming"
# end


# case user_input
# when "Jon"
#   puts "Hi, #{user_input}!"
# when "Arya"
#   puts "Hi, #{user_input}!"
# when "Jagen H'Ghar"
#   puts "Hi, #{user_input}!"
# else 
#   puts "Winter is coming"
# end


if array.include?(user_input)
  puts "Hi, #{user_input}!"
else
  puts "Winter is coming"
end




