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
    # binding.pry
    board_layout = {
                  "A" => [" · ", " · ", " · ", " · "],
                  "B" => [" · ", " · ", " · ", " · "],
                  "C" => [" · ", " · ", " · ", " · "],
                  "D" => [" · ", " · ", " · ", " · "]
                    }

    assert_equal board_layout, board.board
  end

  def test_board_data_can_be_integrated_to_full_board_structure
    board = GameBoard.new
    full_board = {
                  "TOP" => ["   ", " 1 ", " 2 ", " 3 ", " 4 "],
                  "A"   => ["A", " · ", " · ", " · ", " · "],
                  "B"   => ["B", " · ", " · ", " · ", " · "],
                  "C"   => ["C", " · ", " · ", " · ", " · "],
                  "D"   => ["D", " · ", " · ", " · ", " · "]
                    }
    assert_equal full_board, board.full_board
  end


end
