require './lib/computer_ship_placement'
require 'pry'

class GameBoard
  attr_reader :board_user
  attr_accessor :data

  def initialize(name = "Computer")
    @board_user = name
    @data = correct_board
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


  def correct_board
    if board_user == "Computer"
      csp = ComputerShipPlacement.new
      csp.add_boats
      @data = csp.computer_board
    else
      [
        [" . ", " . ", " . ", " . "],
        [" . ", " . ", " . ", " . "],
        [" . ", " . ", " . ", " . "],
        [" . ", " . ", " . ", " . "]
      ]
    end
  end
end

gbcomp = GameBoard.new
gbplayer = GameBoard.new("Player")

binding.pry

""
