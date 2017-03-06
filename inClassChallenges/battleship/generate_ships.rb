require 'pry'
# 1 Aircraft Carrier, 5 spots 
# 1 Battleship, 4 spots 
# 1 Destroyer, 3 spots 
# 1 Submarine, 3 spots 
# 1 Patrol Boat, 2 spots 

@hash = {"A1"=>"ship", "A2"=>"water", "A3"=>"water", "A4"=>"water", "A5"=>"water", "A6"=>"water", "A7"=>"water", "A8"=>"water", "A9"=>"water", "A10"=>"water", "B1"=>"water", "B2"=>"water", "B3"=>"water", "B4"=>"water", "B5"=>"water", "B6"=>"water", "B7"=>"water", "B8"=>"water", "B9"=>"water", "B10"=>"water", "C1"=>"water", "C2"=>"water", "C3"=>"water", "C4"=>"water", "C5"=>"water", "C6"=>"water", "C7"=>"water", "C8"=>"water", "C9"=>"water", "C10"=>"water", "D1"=>"water", "D2"=>"water", "D3"=>"water", "D4"=>"water", "D5"=>"water", "D6"=>"water", "D7"=>"water", "D8"=>"water", "D9"=>"water", "D10"=>"water", "E1"=>"water", "E2"=>"water", "E3"=>"water", "E4"=>"water", "E5"=>"water", "E6"=>"water", "E7"=>"water", "E8"=>"water", "E9"=>"water", "E10"=>"water", "F1"=>"water", "F2"=>"water", "F3"=>"water", "F4"=>"water", "F5"=>"water", "F6"=>"water", "F7"=>"water", "F8"=>"water", "F9"=>"water", "F10"=>"water", "G1"=>"water", "G2"=>"water", "G3"=>"water", "G4"=>"water", "G5"=>"water", "G6"=>"water", "G7"=>"water", "G8"=>"water", "G9"=>"water", "G10"=>"water", "H1"=>"water", "H2"=>"water", "H3"=>"water", "H4"=>"water", "H5"=>"water", "H6"=>"water", "H7"=>"water", "H8"=>"water", "H9"=>"water", "H10"=>"water", "I1"=>"water", "I2"=>"water", "I3"=>"water", "I4"=>"water", "I5"=>"water", "I6"=>"water", "I7"=>"water", "I8"=>"water", "I9"=>"water", "I10"=>"water", "J1"=>"water", "J2"=>"water", "J3"=>"water", "J4"=>"water", "J5"=>"water", "J6"=>"water", "J7"=>"water", "J8"=>"water", "J9"=>"water", "J10"=>"water"}


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
# first placement is aircraft Carrier, 5 spots







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

def choose_axis
  puts "Please enter the axis where you would like to lay your ship and I'll provide the other possible options."
  answer = gets.chomp.upcase
  p show_ship_placement_possibilities(answer, 5)
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


  if down?(answer.split(/[A-Z]/).join, ship_length)
    # add the array of values in the range to an options array
    num = answer.split(/[A-Z]/).join.to_i
    inner_array = []

    ship_length.times do
      inner_array << @table_array[letter_index(answer.split('')[0])][num - 1]
      num += 1
    end
    outer_array << inner_array
  end


  if outer_array == []
    puts "No possible ship placement from that axis, please choose again."
    choose_axis
  else
    check_possibilities_against_hash(outer_array)
  end
    
end

def check_possibilities_against_hash(array, hash)
  out_arr = []

  array.each do |inner_arr|
    true_false_arr = []

    inner_arr.each do |position|
      if (hash[position] == "ship" || hash[position] == "miss" || hash[position] == "hit")
        true_false_arr << "true"   
      else
        true_false_arr << "false"
      end
    end

    out_arr << true_false_arr
  end
  
  true_ship_placement_options(out_arr, array)
end


def true_ship_placement_options(arr, possibilities)
  array = possibilities
  counter = 0
  
  arr.each do |x|
    if x.include?("true")
      array.delete_at(counter)
    else
      counter += 1
    end
  end
  array
end

h = {"A1"=>"ship", "A2"=>"miss", "A3"=>"hit", "A4"=>"water"}
a = [["A4","A4"],["A1","A2"],["A2","A3"],["A3","A4"]]
p check_possibilities_against_hash(a,h)
# choose_axis


# the ship is 5 long. can it fit upward, down, left right?
# is there a ship currently in the path of a possible area?

# will save possibilities into an array of arrays. There will be a maximum of
# four possibilities.

# ask which four possibilities the user prefers

#choose index that user prefers and put ships on the locations in the player hash.

