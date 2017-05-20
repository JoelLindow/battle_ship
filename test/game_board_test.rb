require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_board'
require 'pry'

class GameBoardTest < Minitest::Test

  def test_gameboard_exists
    board = GameBoard.new
    assert_instance_of GameBoard, board
  end

  def test_it_has_gameboard_layout
    board = GameBoard.new
    board_layout = {
                  "A" => [" · ", " · ", " · ", " · "],
                  "B" => [" · ", " · ", " · ", " · "],
                  "C" => [" · ", " · ", " · ", " · "],
                  "D" => [" · ", " · ", " · ", " · "]
                    }

    assert_equal board_layout, board.board
  end

end
