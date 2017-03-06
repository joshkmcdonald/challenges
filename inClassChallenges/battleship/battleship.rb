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

    def create_table(arr)
      rows = []

      10.times do
        inner_array = []
        10.times do
          inner_array << arr.slice!(0)
        end
        rows << inner_array
      end
      table = Terminal::Table.new :rows => rows
      puts table
    end

    def hash_to_arr(player)
      hash_to_array = []
      player.table.each do |x,y|
        hash_to_array << "#{x}_#{y}"
      end
      create_table(hash_to_array)
    end

    def setup
      choose_convoy_locations(@player_1)
      hash_to_arr(@player_1)

      @player_1_turn = false

      choose_convoy_locations(@player_2)
      hash_to_arr(@player_2)

      @player_1_turn = true
      turn
    end

    def choose_convoy_locations(player)
      @player_1_turn ? (puts "#{@player_1.name}:") : (puts "#{@player_2.name}:")

      # 1 Aircraft Carrier, 5 spots
      puts "Starting with you Aircraft Carrier, which takes up 5 spaces:"
      choose_axis(5)
      # 1 Battleship, 4 spots
      puts "Now for your battleship, which takes up 4 spaces:"
      choose_axis(4)
      # 1 Destroyer, 3 spots
      puts "Your Aircraft Carrier, which takes up 3 spaces:"
      choose_axis(3)
      # 1 Submarine, 3 spots
      puts "Your Submarine, which also takes up 3 spaces:"
      choose_axis(3) 
      # 1 Patrol Boat, 2 spots
      puts "Your Patrol Boat, which takes up 5 spaces:"
      choose_axis(2)

      # puts "Choose 17 locations to place a ship"
      # 2.times do |x|
      #   puts "Position #{x+1}:"
      #   answer = gets.chomp.upcase
      #   player.table[answer] = "ship"
      # end
    end

    def turn
      if @player_1.table.value?("ship") && @player_2.table.value?("ship") 
        if @player_1_turn
          puts "Player 1:"
          get_bombing_decision
        else
          puts "Player 2:"
          get_bombing_decision
        end
      else
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
        when "ship"
          puts "that was a hit"
          player.table[location] = 'hit'
          change_player
          turn

        when "miss"
          puts "You've already shot that location. Please choose another."
          turn
        when "hit"
          puts "You've already made a hit at that location. Please choose another."
          turn
        else
          puts "That was a miss."
          player.table[location] = 'miss'
          change_player
          turn
        end
      else
        puts "That chosen location is not on the map."
        puts "Please choose a new location (A-J/1-10) example: A1 or B10."
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


















