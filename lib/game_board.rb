require './lib/computer_ship_placement'
require './lib/user_ship_placement'
require 'pry'

class GameBoard
  attr_reader :board_user, :small_boat, :big_boat
  attr_accessor :data

  def initialize(name = "Computer")
    @board_user = name
    @small_boat = []
    @big_boat = []
    @data = correct_board
    # binding.pry
  end

  def full_board_view
    full_board = [
                  [" ", " 1 ", " 2 ", " 3 ", " 4 "],
                  ["A", data[0][0], data[0][1], data[0][2], data[0][3]],
                  ["B", data[1][0], data[1][1], data[1][2], data[1][3]],
                  ["C", data[2][0], data[2][1], data[2][2], data[2][3]],
                  ["D", data[3][0], data[3][1], data[3][2], data[3][3]]
                 ]
    full_board
  end

  def full_computer_board_view
    "  1  2  3  4
A#{filtered_view(0, 0)}#{filtered_view(0, 1)}#{filtered_view(0, 2)}#{filtered_view(0, 3)}
B#{filtered_view(1, 0)}#{filtered_view(1, 1)}#{filtered_view(1, 2)}#{filtered_view(1, 3)}
C#{filtered_view(2, 0)}#{filtered_view(2, 1)}#{filtered_view(2, 2)}#{filtered_view(2, 3)}
D#{filtered_view(3, 0)}#{filtered_view(3, 1)}#{filtered_view(3, 2)}#{filtered_view(3, 3)}
"
  end

  def filtered_view(row,index)
    if data[0][row][index] == " H "
      " H "
    elsif data[0][row][index] == " M "
      " M "
    else
      " . "
    end
  end


  def correct_board
    if board_user == "Computer"
      csp = ComputerShipPlacement.new
      csp.add_boats
      @small_boat = csp.boat_2_long_positions
      @big_boat = csp.boat_3_long_positions
      csp.computer_board
    else
      usp = UserShipPlacement.new
      usp.add_boats
      @small_boat = usp.boat_2_long_positions
      @big_boat = usp.boat_3_long_positions
      usp.user_board
    end
  end

  def self.base_game_board
    [
            [" . ", " . ", " . ", " . "],
            [" . ", " . ", " . ", " . "],
            [" . ", " . ", " . ", " . "],
            [" . ", " . ", " . ", " . "]
            ]
  end

  def base_game_board_full_output
    [
                  [" ", " 1 ", " 2 ", " 3 ", " 4 "],
                  ["A", " . ", " . ", " . ", " . "],
                  ["B", " . ", " . ", " . ", " . "],
                  ["C", " . ", " . ", " . ", " . "],
                  ["D", " . ", " . ", " . ", " . "]
                    ]
  end
end
