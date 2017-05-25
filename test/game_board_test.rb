require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_board'
require 'rake/testtask'
require 'pry'

class GameBoardTest < Minitest::Test

  def test_it_exists
    board = GameBoard.new
    assert_instance_of GameBoard, board
  end

  def test_gameboard_has_data_structure_by_default
    board = GameBoard.new
    game_data = [
            [" . ", " . ", " . ", " . "],
            [" . ", " . ", " . ", " . "],
            [" . ", " . ", " . ", " . "],
            [" . ", " . ", " . ", " . "]
            ]
    assert_equal game_data, board.base_game_board
  end

  def test_gameboard_data_can_be_presented_in_gameboard_structure
    board = GameBoard.new
    full_game_board = [
                  [" ", " 1 ", " 2 ", " 3 ", " 4 "],
                  ["A", " . ", " . ", " . ", " . "],
                  ["B", " . ", " . ", " . ", " . "],
                  ["C", " . ", " . ", " . ", " . "],
                  ["D", " . ", " . ", " . ", " . "]
                    ]

    assert_equal full_game_board, board.base_game_board_full_output
  end


end
