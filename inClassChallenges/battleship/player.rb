module Battleship  
  class Player

    attr_accessor :name, :table, :opponent_table
    def initialize
      puts "What is your name?"
      @name = gets.chomp
      @table = battle_table
      @opponent_table = battle_table
    end

    def battle_table
      hash = {}

      ("A".."J").each do |x|
        (1..10).each do |y|
           hash["#{x}#{y}"] = "water"
        end
      end
      hash
    end
  end
end