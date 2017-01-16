#!/usr/env/ruby
# Lets make a mad lib
# Create a madlib that prompts the user for all 19 entries. After all entries are submitted print the madlib to the screen with the words substituted into the paragraph. 
# (hint: Look into Ruby strings & Ruby string interpolation)


# 1 - Adjective
puts "Please provide the word types requested."
puts "Please provide an adjective"
adjective1 = gets.chomp
# 2 - Noun
puts "Noun"
noun1 = gets.chomp
# 3 - Noun
puts "Noun"
noun2 = gets.chomp
# 4 - Body Part (Plural)
puts "Body Part (Plural)"
body_part = gets.chomp
# 5 - Verb
puts "Verb"
verb1 = gets.chomp
# 6 - Verb
puts "another verb"
verb2 = gets.chomp
# 7 - Verb
puts "And another verb"
verb3 = gets.chomp
# 8 - Adjective
puts "adjective"
adjective2 = gets.chomp
# 9 - Noun
puts "Noun"
noun3 = gets.chomp
# 10 - Verb ending in "ed"
puts "Verb ending in 'ed'"
verb4 = gets.chomp
# 11 - Number
puts "A number"
number = gets.chomp
# 12 - Noun
puts "Noun"
noun4 = gets.chomp
# 13 - Noun (Plural)
puts "Plural noun"
noun5 = gets.chomp
# 14 - Adjective
puts "adjective"
adjective3 = gets.chomp
# 15 - Adjective
puts "adjective"
adjective4 = gets.chomp
# 16 - Place
puts "A place"
place = gets.chomp
# 17 - Funny Word
puts "funny word"
funny_word = gets.chomp
# 18 - Letter
puts "A letter"
letter1 = gets.chomp
# 19 - Letter
puts "Another letter"
letter2 = gets.chomp

 p "It`s 1990, and SEGA isn`t making very #{adjective1} games. Nintendo`s mascot, Mario, is making more and more games that are way better than any of SEGA`s. Then SEGA had an #{noun1}, what they needed is a Mario of their own...they had the #{noun2} of making a rabbit that can stretch his #{body_part} out and #{verb1} things. That plan didn`t go so well. They needed an animal that can #{verb2} itself and #{verb3} enemies by doing only a spin. They noticed that hedgehogs have quills that #{adjective2} and #{noun3}. So they went with the hedgehog. Since he was planned to be a rabbit, they programmed him to run at a #{verb4} speed. Then, in 1991, `Sonic the Hedgehog` was released for the SEGA #{number}. In the first year, it out-#{noun4} Mario by #{noun5} Copies. Sonic was then known as SEGA`s #{adjective3}. Over the years, Sonic has taken on many #{adjective4}. In 1998, he took on a #{place} style in the game `Sonic Adventure.` Today, Mario and Sonic are still #{funny_word} rivals. Also, in Winter 2007, Mario and Sonic will compete in the 2008 #{letter1} Olympics in `Mario and Sonic at the Olympic Games` for the Nintendo #{funny_word} and Nintendo #{letter1} #{letter2}."

 i = 0
num = 22
my_array = []


  while i < num do
    puts "provide a noun, verb, adjective or number"
    input = gets.chomp
    my_array.push(input)
    i += 1
  end



p "It`s 1990, and SEGA isn`t making very #{my_array[0]} games. Nintendo`s mascot, Mario, is making more and more games that are way better than any of SEGA`s. Then SEGA had an #{my_array[2]}, what they needed is a Mario of their own...they had the #{my_array[3]} of making a rabbit that can stretch his #{my_array[4]} out and #{my_array[5]} things. That plan didn`t go so well. They needed an animal that can #{my_array[6]} itself and #{my_array[7]} enemies by doing only a spin. They noticed that hedgehogs have quills that #{my_array[8]} and #{my_array[9]}. So they went with the hedgehog. Since he was planned to be a rabbit, they programmed him to run at a #{my_array[10]} speed. Then, in 1991, `Sonic the Hedgehog` was released for the SEGA #{my_array[11]}. In the first year, it out-#{my_array[12]} Mario by #{my_array[13]} Copies. Sonic was then known as SEGA`s #{my_array[14]}. Over the years, Sonic has taken on many #{my_array[15]}. In 1998, he took on a #{my_array[16]} style in the game `Sonic Adventure.` Today, Mario and Sonic are still #{my_array[17]} rivals. Also, in Winter 2007, Mario and Sonic will compete in the 2008 #{my_array[18]} Olympics in `Mario and Sonic at the Olympic Games` for the Nintendo #{my_array[19]} and Nintendo #{my_array[20]} #{my_array[21]}."

verb_array = []
noun_array = []
number_array = []
funnyword_array = []

puts "please type 5 funny words"
5.times do
  input = gets.chomp
  funnyword_array.push(input)
end

puts "please type 5 nouns"
5.times do
  input = gets.chomp
  noun_array.push(input)
end

puts "please type 5 numbers"
5.times do
  input = gets.chomp
  number_array.push(input)
end

puts "please type 5 verbs"
5.times do
  input = gets.chomp
  verb_array.push(input)
end


p "It`s 1990, and SEGA isn`t making very #{funnyword_array[0]} games. Nintendo`s mascot, Mario, is making more and more games that are way better than any of SEGA`s. Then SEGA had an #{noun_array[0]}, what they needed is a Mario of their own...they had the #{verb_array[3]} of making a rabbit that can stretch his #{verb_array[2]} out and #{number_array[3]} things."

