empty = 0
white = 1
black = 2
board_size = 8

# TODO: Why can't I just do this?
# I get the error: Non-exhaustive pattern matching rule. Default case of number type not covered.
# last_row_index = board_size - 1
# last_position_index = (board_size * board_size) - 1
# white_starting_position = last_position_index - board_size + 1
last_row_index = 7
last_position_index = 63
white_starting_position = 56

# Board Map positions
#    y0 y1 y2 y3 y4 y5 y6 y7
# x0  0  1  2  3  4  5  6  7
# x1  8  9 10 11 12 13 14 15
# x2 16 17 28 19 20 21 22 23
# x3 24 25 26 27 28 29 30 31
# x4 32 33 34 35 36 37 38 38
# x5 40 41 42 43 44 45 46 47
# x6 48 49 50 51 52 53 54 55
# x7 56 57 58 59 60 61 62 63
def get_position_index(x, y):
  return x*board_size + y

def get_initial_position_value(position):
  if position < board_size:
    return black
  else:
    if position >= white_starting_position:
      return white
    else:
      return empty

def get_initial_board():
  bend position = 0, board = {}:
    when position <= last_position_index:
      board[position] = get_initial_position_value(position)
      return fork(position + 1, board)
    else:
      return board

def get_pieces(board, turn):
  bend position = 0, board:
    when position <= last_position_index:
      if (board[position] == turn):
        pieces = List/Cons(position, fork(position + 1, board)) 
      else:
        pieces = fork(position + 1, board)
    else:
      pieces = List/Nil
  return pieces

def get_possible_moves(board, turn):
  pieces = get_pieces(board, turn)
  return pieces

def main():
  board = get_initial_board()
  possible_moves = get_possible_moves(board, white)
  return possible_moves
