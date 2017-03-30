chess_board = Hash.new

def create_chess_board(board)
  gold = 1

  (1..64).each do |x|
    board["space #{x}"] = gold
    gold *= 2
  end

  board
end


def print_board(board)
  board.each do |x,y|
    puts "#{x}: #{y} gold"
  end
end


chess_board = create_chess_board(chess_board)
print_board(chess_board)
p "Total #{chess_board.values.sum}"
puts "*" * 64
puts chess_board
