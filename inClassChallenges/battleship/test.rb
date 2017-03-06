require 'terminal-table'

hash = {"A1"=>"water", "A2"=>"water", "A3"=>"water", "A4"=>"water", "A5"=>"water", "A6"=>"water", "A7"=>"water", "A8"=>"water", "A9"=>"water", "A10"=>"water", "B1"=>"water", "B2"=>"water", "B3"=>"water", "B4"=>"water", "B5"=>"water", "B6"=>"water", "B7"=>"water", "B8"=>"water", "B9"=>"water", "B10"=>"water", "C1"=>"water", "C2"=>"water", "C3"=>"water", "C4"=>"water", "C5"=>"water", "C6"=>"water", "C7"=>"water", "C8"=>"water", "C9"=>"water", "C10"=>"water", "D1"=>"water", "D2"=>"water", "D3"=>"water", "D4"=>"water", "D5"=>"water", "D6"=>"water", "D7"=>"water", "D8"=>"water", "D9"=>"water", "D10"=>"water", "E1"=>"water", "E2"=>"water", "E3"=>"water", "E4"=>"water", "E5"=>"water", "E6"=>"water", "E7"=>"water", "E8"=>"water", "E9"=>"water", "E10"=>"water", "F1"=>"water", "F2"=>"water", "F3"=>"water", "F4"=>"water", "F5"=>"water", "F6"=>"water", "F7"=>"water", "F8"=>"water", "F9"=>"water", "F10"=>"water", "G1"=>"water", "G2"=>"water", "G3"=>"water", "G4"=>"water", "G5"=>"water", "G6"=>"water", "G7"=>"water", "G8"=>"water", "G9"=>"water", "G10"=>"water", "H1"=>"water", "H2"=>"water", "H3"=>"water", "H4"=>"water", "H5"=>"water", "H6"=>"water", "H7"=>"water", "H8"=>"water", "H9"=>"water", "H10"=>"water", "I1"=>"water", "I2"=>"water", "I3"=>"water", "I4"=>"water", "I5"=>"water", "I6"=>"water", "I7"=>"water", "I8"=>"water", "I9"=>"water", "I10"=>"water", "J1"=>"water", "J2"=>"water", "J3"=>"water", "J4"=>"water", "J5"=>"water", "J6"=>"water", "J7"=>"water", "J8"=>"water", "J9"=>"water", "J10"=>"water"}

table_array = [["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10"], 
               ["B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10"], 
               ["C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10"], 
               ["D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "D10"], 
               ["E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10"], 
               ["F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10"], 
               ["G1", "G2", "G3", "G4", "G5", "G6", "G7", "G8", "G9", "G10"], 
               ["H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10"], 
               ["I1", "I2", "I3", "I4", "I5", "I6", "I7", "I8", "I9", "I10"], 
               ["J1", "J2", "J3", "J4", "J5", "J6", "J7", "J8", "J9", "J10"]]

arrays = [[1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]]

array = hash.flatten

# rows = []
# rows << ['One', 1]
# rows << ['Two', 2]
# rows << ['Three', 3]
# table = Terminal::Table.new :rows => rows
# puts table


def hash_to_arr(player)
  hash_to_array = []
  player.table.each do |x,y|
    hash_to_array << "#{x}#{y}"
  end
  create_table(hash)
end

def create_table
  array = []

  ("A".."J").each do |x|
    inner_array = []
    (1..10).each do |y|
      inner_array << "#{x}#{y}"
    end
    array << inner_array
  end
  array
end

p create_table

# def create_table(arr)
#   rows = []

#   10.times do
#     inner_array = []
#     10.times do
#       inner_array << arr.slice!(0)
#     end
#     rows << inner_array
#   end
#   table = Terminal::Table.new :rows => rows
#   puts table
# end

# create_table(hash_to_array)

