require 'pry'

@menu = {
  "breakfast"=> [
    {
     "Waffle" => 5.67,
     "GrandSlam" => 6.78, 
     "GritsMeal" => 7.89,
     "FrenchToast" => 9.1
    },
    {
     "Eggs" => 2.1,
     "Bacon" => 3.1,
     "Fruit" => 12.0,
     "Toast" => 1.5
    }],
  

  "lunch"=> [
    {
     "Burger"=> 1.0,
     "Wrap"=> 1.5,
     "Salad"=> 151.0,
     "GoodChicken"=> 0.50
    },
    {
     "ChickenFingers"=> 0.1,
     "Macncheese"=> 0.4,
     "MozzarellaSticks"=> 4.0,
     "GoodFruit"=> 1000.0
    }],


  "dinner"=> [
    {
     "Burger"=> 2.0,
     "Wrap"=> 3.0,
     "Salad"=> 302.0,
     "GoodChicken"=> 0.25
    },
    {
     "ChickenFingers"=> 0.05,
     "Macncheese"=> 0.80,
     "MozzarellaSticks"=> 8.0,
     "GoodFruit"=> 2000.0
    }]
}

def calculate_cost(array, time)
  cost = 0

  array.each do |x|
    if @menu[time][0].key?(x)
      cost += @menu[time][0][x]
    else
       cost += @menu[time][1][x]
    end
  end
  cost
end


def print_menu(time)
  2.times do |s|
    @menu[time][s].each do |x,y|
      puts "item: #{x}, price: #{y}"
    end
  end
end


def chef_special(time)
  entree = []
  side = []
  special = []

  @menu[time][0].each do |x,y|
    entree << x
  end

  @menu[time][1].each do |x,y|
    side << x
  end

  special << entree.sample
  2.times {special << side.sample}

  special
end


def whats_your_meal(answer, special, time)

  if answer == 'yes'
    p "The cost of your meal is #{calculate_cost(special, time)}"
  elsif answer == 'no'
    puts "what do you want?"
    puts "She has completely given up on you and passes you a tablet for an automated order, which reads: 'please provide one entree item and two sides, written on one line separated by a space'"
    my_meal = gets.chomp.split(" ")
    p "The cost of your meal is #{calculate_cost(my_meal, time)}"
  else
    "you dumb"
  end

end


puts "You enter Bottega Diner and are greeted by a haggard looking waitress with a nametag reading 'Brenna-Tay-Tay', 'Hey there honey, yens here for breakfast, lunch, or dinner?'"
time = gets.chomp
# time = 'breakfast'

if time == "breakfast"
  special = chef_special(time)
  puts "She seems upset by your response, 'Here's the menu ya dang alcoholic!' and passes you the breakfast menu"
  print_menu(time)
  puts "(Printed at the bottom of the menu you read 'Please pick a single entree and two sides')"  
  print "Suddenly she seems hopeful and asks 'But may I suggest the chef's special, which is #{special}?'"

  puts "Would you like the chef's special?"
  answer = gets.chomp

  whats_your_meal(answer, special, time)

elsif time == "lunch"
  special = chef_special(time)
  puts "Excited by your response, she flirts 'Hey there cutie, you likin' my booty? Here's the menu'"
  print_menu(time)
  puts "(Printed at the bottom of the menu you read 'Please pick a single entree and two sides')"  
  print "A spark of life appears in her eyes as she sees potential commission and asks 'But may I suggest the chef's special, which is #{special}?'"

  puts "Would you like the chef's special?"
  answer = gets.chomp

  whats_your_meal(answer, special, time)

elsif time == "dinner"
  special = chef_special(time)
  puts "Dead eyes and soulless, the waitress hands you a folded sheet 'Here's the menu'"
  print_menu(time)
  puts "(Printed below you read 'Please pick a single entree and two sides')"
  print "The long day has clearly worn her out, you see her grimace as she asks 'But may I suggest the chef's special, which is #{special}?'"

  puts "Would you like the chef's special?"
  answer = gets.chomp

  whats_your_meal(answer, special, time)

else
  puts "The waitress screams back 'Did y'all understand my question?!'"

end