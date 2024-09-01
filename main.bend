object Game { board, white_turn }

board_size = 8
white = 0
black = 1

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

def get_initial_board():
  return { 
    0: white, 1: white, 2: white, 3: white, 4: white, 5: white, 6: white, 7: white,
    get_position_index(7, 0): black,
    get_position_index(7, 1): black,
    get_position_index(7, 2): black,
    get_position_index(7, 3): black,
    get_position_index(7, 4): black,
    get_position_index(7, 5): black,
    get_position_index(7, 6): black,
    get_position_index(7, 7): black,
  }

def main():
  board = get_initial_board()
  return board[get_position_index(4, 0)]
