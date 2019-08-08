# def create_row(width)
#   row = []
#   width.times do
#       row += [0]
#   end
#   return row
# end

# def create_board(width, height)
#   row = create_row(width)
#   board = []
#   height.times do
#     board += [row]
#   end
#   return board
# end


# def print_board(board)
#   board.each do |row|
#     puts row.join(" ")
#   end
# end

# def play(board, row, col, char)
#   board[row][col] = char
#   print_board(board)
#   return board
# end

# board = create_board(5,5)
# print_board(board)
# puts " "
# play(board, 3, 2, 'x')

matrix = [[1,2],[3,4]]

