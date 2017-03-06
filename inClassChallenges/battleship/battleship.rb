require 'pry'
require 'terminal-table'
require './player'

module Battleship
  class Game

    def initialize
      puts "Player 1"
      @player_1 = Player.new
      puts "Player 2"
      @player_2 = Player.new
      @player_1_turn = true
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

      puts "Choose 17 locations to place a ship"
      2.times do |x|
        puts "Position #{x+1}:"
        answer = gets.chomp.upcase
        player.table[answer] = "ship"
      end
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


















