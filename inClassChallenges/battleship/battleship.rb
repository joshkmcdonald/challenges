require 'pry'
require 'terminal-table'
require './player'
require './generate_ships'

module Battleship
  class Game

    def initialize
      puts "Player 1"
      @player_1 = Player.new
      puts "Player 2"
      @player_2 = Player.new
      @player_1_turn = true

      @table_array = [["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10"], 
                     ["B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10"], 
                     ["C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10"], 
                     ["D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "D10"], 
                     ["E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10"], 
                     ["F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10"], 
                     ["G1", "G2", "G3", "G4", "G5", "G6", "G7", "G8", "G9", "G10"], 
                     ["H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10"], 
                     ["I1", "I2", "I3", "I4", "I5", "I6", "I7", "I8", "I9", "I10"], 
                     ["J1", "J2", "J3", "J4", "J5", "J6", "J7", "J8", "J9", "J10"]]
    end

    def print_array_of_arrays(array)
      array.each do |inner_array|
        p inner_array
      end
    end

    def create_table(arr)
      rows = []

      10.times do
        inner_array = []
        10.times do
          inner_array << arr.slice!(0)
        end
        rows << inner_array
      end
      puts Terminal::Table.new :rows => rows
    end

    def hash_to_arr(hash)
      hash_to_array = []
      hash.each do |x,y|
        hash_to_array << "#{x}_#{y}"
      end
      create_table(hash_to_array)
    end

    def setup
      puts "Welcome to Share-a-terminal-window Battleship!"
      puts "#{@player_1.name}, make sure #{@player_2.name} isn't looking at the"
      puts "screen while you make your ship placements."
      puts "Press enter when you are ready to begin."
      gets.chomp

      choose_convoy_locations(@player_1)
      hash_to_arr(@player_1.table)

      puts "#{@player_1.name}, The table above shows your completed battlefield."
      puts "Press enter again to pass the game off to #{@player_2.name}"
      gets.chomp

      change_player

      50.times do
        p '*' * 5
      end

      puts "#{@player_2.name}, make sure #{@player_1.name} isn't looking at the"
      puts "screen while you make your ship placements."
      puts "Press enter when you are ready to begin."
      gets.chomp

      choose_convoy_locations(@player_2)
      hash_to_arr(@player_2.table)

      puts "#{@player_2.name}, The table above shows your completed battlefield."
      puts "Press enter to start the battle."
      gets.chomp

      change_player

      50.times do
        p '*' * 5
      end

      turn
        
    end

    def choose_convoy_locations(player)
      @player_1_turn ? (puts "#{@player_1.name}:") : (puts "#{@player_2.name}:")

      # 1 Aircraft Carrier, 5 spots
      puts "Starting with your Aircraft Carrier, which takes up 5 spaces,"
      choose_final_ship_placement(choose_axis(5, player), player)
      # 1 Battleship, 4 spots
      puts "Now for your battleship, which takes up 4 spaces,"
      choose_final_ship_placement(choose_axis(4, player), player)
      # 1 Destroyer, 3 spots
      puts "Your Aircraft Carrier, which takes up 3 spaces,"
      choose_final_ship_placement(choose_axis(3, player), player)
      # 1 Submarine, 3 spots
      puts "Your Submarine, which also takes up 3 spaces,"
      choose_final_ship_placement(choose_axis(3, player), player) 
      # 1 Patrol Boat, 2 spots
      puts "Your Patrol Boat, which takes up 2 spaces,"
      choose_final_ship_placement(choose_axis(2, player), player)

      # puts "Choose 17 locations to place a ship"
      # 2.times do |x|
      #   puts "Position #{x+1}:"
      #   answer = gets.chomp.upcase
      #   player.table[answer] = "ship"
      # end
    end

    def choose_final_ship_placement(array, player)
      puts "Your placement options based on the axis you provided are below:"

      counter = 1
      array.each do |x|
        puts "Type #{counter} to select:"
        p x
        counter += 1
      end

      choose_by_array_index(array, player)
    end

    def choose_by_array_index(array, player)
      answer = gets.chomp.to_i
      num = array.length

      
      if answer <= num && answer > 0
        array[answer - 1].each do |x|
          player.table[x] = '🚢'
        end
      else
        puts "please type a number between 1 and #{num}"
        choose_by_array_index(array, player)
      end
    end

    def turn
      if @player_1.table.value?("🚢") && @player_2.table.value?("🚢")

        if @player_1_turn

          50.times do
            p '*' * 5
          end
          
          puts "#{@player_1.name}:"
          puts "press enter to start your turn"
          gets.chomp 
          puts "Your opponent's battlefield, showing where you've hit or missed:"
          hash_to_arr(@player_1.opponent_table)
          puts "Your battlefield:"
          hash_to_arr(@player_1.table)
          get_bombing_decision
        else

          50.times do
            p '*' * 5
          end

          puts "#{@player_2.name}:"
          puts "press enter to start your turn"
          gets.chomp 
          puts "Your opponent's battlefield, showing where you've hit or missed:"
          puts hash_to_arr(@player_2.opponent_table)
          puts "Your battlefield:"
          puts hash_to_arr(@player_2.table)
          get_bombing_decision
        end
      else
        puts "Player 1 final grid:"
        hash_to_arr(@player_1.table)
        puts "Player 2 final grid:"
        hash_to_arr(@player_2.table)
        @player_1_turn ? (puts "Player 2 wins") : (puts "Player 1 wins")
      end
    end

    def get_bombing_decision
      puts "choose a location to bomb."
      location = gets.chomp.upcase
      bomb_player(location)
    end

    def bomb_player(location)
      if @player_1_turn
        bomb_player_location(location, @player_2)
      else
        bomb_player_location(location, @player_1)
      end
    end

    def bomb_player_location(location, player)
      if player.table.include?(location)
        case player.table[location]
        when "🚢"
          puts "that was a hit 💥"
          player.table[location] = '💥'
          @player_1_turn ? @player_1.opponent_table[location] = '💥' : @player_2.opponent_table[location] = '💥'

          puts "Press enter to continue."
          gets.chomp

          change_player
          turn

        when "🤡"
          puts "You've already shot that location. Please choose another."
          puts "Press enter to continue."
          gets.chomp

          turn
        when "💥"
          puts "You've already made a hit at that location. Please choose another."
          puts "Press enter to continue."
          gets.chomp

          turn
        else
          puts "That was a miss 🤡."
          player.table[location] = '🤡'
          @player_1_turn ? @player_1.opponent_table[location] = '🤡' : @player_2.opponent_table[location] = '🤡'
          puts "Press enter to continue."
          gets.chomp

          change_player
          turn
        end
      else
        puts "That chosen location is not on the map."
        puts "Please choose a new location (A-J/1-10) example: A1 or B10."
        puts "Press enter to continue."
        gets.chomp

        turn
      end
    end

    def change_player
      @player_1_turn ? @player_1_turn = false : @player_1_turn = true
    end
  end
end

game = Battleship::Game.new
game.setup


















