require 'pry'

module Battleship
  class Game

    def up?(letter, ship_length)
      case letter
      when 'A'
        false
      when 'B'
        if ship_length == 2
          true
        else 
          false
        end
      when 'C'
        if ((ship_length == 2) || (ship_length == 3))
          true
        else
          false
        end
      when 'D'
        if ((ship_length == 2) || (ship_length == 3) || (ship_length == 4))
          true
        else
          false
        end
      when 'E'
        if ((ship_length == 2) || (ship_length == 3) || (ship_length == 4) || (ship_length == 5))
          true
        else
          false
        end
      else
        true
      end
    end

    def down?(letter, ship_length)
      case letter
      when 'J'
        false
      when 'I'
        if ship_length == 2
          true
        else 
          false
        end
      when 'H'
        if (ship_length == 2) || (ship_length == 3)
          true
        else
          false
        end
      when 'G'
        if (ship_length == 2) || (ship_length == 3) || (ship_length == 4)
          true
        else
          false
        end
      when 'F'
        if (ship_length == 2) || (ship_length == 3) || (ship_length == 4) || (ship_length == 5)
          true
        else
          false
        end
      else
        true
      end
    end

    def left?(number, ship_length)
      case number
      when '1'
        false
      when '2'
        if ship_length == 2
          true
        else 
          false
        end
      when '3'
        if (ship_length == 2) || (ship_length == 3)
          true
        else
          false
        end
      when '4'
        if (ship_length == 2) || (ship_length == 3) || (ship_length == 4)
          true
        else
          false
        end
      when '5'
        if (ship_length == 2) || (ship_length == 3) || (ship_length == 4) || (ship_length == 5)
          true
        else
          false
        end
      else
        true
      end
    end

    def right?(number, ship_length)
      case number
      when '10'
        false
      when '9'
        if ship_length == 2
          true
        else 
          false
        end
      when '8'
        if (ship_length == 2) || (ship_length == 3)
          true
        else
          false
        end
      when '7'
        if (ship_length == 2) || (ship_length == 3) || (ship_length == 4)
          true
        else
          false
        end
      when '6'
        if (ship_length == 2) || (ship_length == 3) || (ship_length == 4) || (ship_length == 5)
          true
        else
          false
        end
      else
        true
      end
    end

    def choose_axis(ship_length, player)
      puts "Please enter the axis where you would like to lay your ship and I'll provide the other possible options."
      answer = gets.chomp.upcase

      if player.table.key?(answer)
        show_ship_placement_possibilities(answer, ship_length)
      else
        puts "That axis does not exist. Please try again."
        choose_axis(ship_length)
      end
    end


    def letter_index(letter)
      case letter
      when 'A'
        0
      when 'B'
        1
      when 'C'
        2
      when 'D'
        3
      when 'E'
        4
      when 'F'
        5
      when 'G'
        6
      when 'H'
        7
      when 'I'
        8
      when 'J'
        9
      end
    end

    # up & down
    # table_array[change][same]

    # left & right
    # table_array[same][change]
    def show_ship_placement_possibilities(answer, ship_length)
      outer_array = []

      if up?(answer.split('')[0], ship_length)
        # add the array of values in the range to an options array
        num = letter_index(answer.split('')[0])
        inner_array = [] 

        ship_length.times do
          inner_array << @table_array[num][answer.split(/[A-Z]/).join.to_i - 1]
          num -= 1
        end
        outer_array << inner_array
      end


      if down?(answer.split('')[0], ship_length)
        # add the array of values in the range to an options array
        num = letter_index(answer.split('')[0])
        inner_array = []

        ship_length.times do
          inner_array << @table_array[num][answer.split(/[A-Z]/).join.to_i - 1]
          num += 1
        end
        outer_array << inner_array
      end

      
      if left?(answer.split(/[A-Z]/).join, ship_length)
        # add the array of values in the range to an options array
        num = answer.split(/[A-Z]/).join.to_i
        inner_array = []

        ship_length.times do
          inner_array << @table_array[letter_index(answer.split('')[0])][num - 1]
          num -= 1
        end
        outer_array << inner_array
      end


      if right?(answer.split(/[A-Z]/).join, ship_length)
        # add the array of values in the range to an options array
        num = answer.split(/[A-Z]/).join.to_i
        inner_array = []

        ship_length.times do
          inner_array << @table_array[letter_index(answer.split('')[0])][num - 1]
          num += 1
        end
        outer_array << inner_array
      end
  
      check_possibilities_against_hash(outer_array, ship_length)     
    end

    def check_possibilities_against_hash(array, ship_length)
      @player_1_turn ? hash = @player_1.table : hash = @player_2.table
      out_arr = []

      array.each do |inner_arr|
        true_false_arr = []

        inner_arr.each do |position|
          if (hash[position] == "ship" || hash[position] == "miss" || hash[position] == "hit" || hash[position] == nil)
            true_false_arr << "true"   
          else
            true_false_arr << "false"
          end
        end

        out_arr << true_false_arr
      end
      
      true_ship_placement_options(out_arr, array, ship_length)
    end


    def true_ship_placement_options(arr, possibilities, ship_length)
      array = possibilities
      counter = 0
      
      arr.each do |x|
        if x.include?("true")
          array.delete_at(counter)
        else
          counter += 1
        end
      end

      if array == []
        puts "No possible ship placement from that axis, please choose again."
        @player_1_turn ? choose_axis(ship_length, @player_1) : choose_axis(ship_length, @player_2)
      else
        array
      end
    end
  end
end


