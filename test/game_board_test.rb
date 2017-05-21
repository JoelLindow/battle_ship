require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_board'
require 'pry'

class GameBoardTest < Minitest::Test

  def test_gameboard_exists
    board = GameBoard.new
    assert_instance_of GameBoard, board
  end



end
