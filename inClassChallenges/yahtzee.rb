# class Player
#   attr_accessor :name, :score

#   def initizlize
#     @name = name
#     @score = score
#   end
# end


# class Scorecard

#   def initialize
#     @score = {

#     }
#   end
# end


class Game

  def initialize
    puts "How many players"
    @num_players = gets.chomp.to_i
    @players = Array.new(@num_players)
    @game_scores = Array.new(@num_players)

    # -----------------------
      @players.length.times do |x|
        puts "Enter the name for player #{x+1}"
        @players[x] = gets.chomp
      end
   

    p @players

   
      @game_scores.length.times do |x|
        @game_scores[x] = {}
      end
   

    p @game_scores
    # _______________________

    @starting_array = []
  end
    

  def roll(array)
    (5 - array.length).times do
      array << rand(1..6)
    end
    array
  end


  def turns
    # turn1
    roll(@starting_array)
    puts "Here is your first roll:"
    p @starting_array
    puts "You have 2 rolls left. Would you like to roll again? Type y or n"
    
    roll_again


    #turn2
    roll(@starting_array)
    puts "Here are your results after the second roll:"
    p @starting_array
    puts "You have 1 roll left. Would you like to roll again? Type y or n"
   
    roll_again



    #turn3
    roll(@starting_array)
    puts "Here are your final results:"
    p @starting_array
    
    puts "end of turn method"
      
  end


  def kept_values
    puts "How many values would you like to keep"
    values = gets.chomp.to_i

    new_array = []

    values.times do
      puts "Which value would you like to keep"
      new_array << gets.chomp.to_i

    end

    @starting_array = new_array
  end


  def roll_again
    answer = gets.chomp.downcase
    if answer == 'y'
      kept_values
      roll(@starting_array)
    elsif answer == 'n'
      p "scorecard,,,eventually"
    else
      roll_again
    end
  end
end

Game.new.turns


# def ones
#     if @roll.include?(1)
#         @scorecard["ones"] = @roll.select {|x| x == 1}.inject(:+)
#     else
#         @scorecard["ones"] = "scratch"
#     end
# end

# def twos
#     if @roll.include?(2)
#         @scorecard["twos"] = @roll.select {|x| x == 2}.inject(:+)
#     else
#         @scorecard["twos"] = "scratch"
#     end
# end

# def threes
#     if @roll.include?(3)
#         @scorecard["threes"] = @roll.select {|x| x == 3}.inject(:+)
#     else
#         @scorecard["threes"] = "scratch"
#     end
# end

# def fours
#     if @roll.include?(4)
#         @scorecard["fours"] = @roll.select {|x| x == 4}.inject(:+)
#     else
#         @scorecard["fours"] = "scratch"
#     end
# end

# def fives
#     if @roll.include?(5)
#         @scorecard["fives"] = @roll.select {|x| x == 5}.inject(:+)
#     else
#         @scorecard["fives"] = "scratch"
#     end
# end

# def sixes
#     if @roll.include?(6)
#         @scorecard["sixes"] = @roll.select {|x| x == 6}.inject(:+)
#     else
#         @scorecard["sixes"] = "scratch"
#     end
# end

# def three_of_a_kind

# end

# def four_of_a_kind
# end

# def full_house
# end

# def sm_straight

# end

# def lg_straight
# end

# def yatzee
# end

# def chance
# end


