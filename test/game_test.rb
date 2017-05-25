require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require 'rake/testtask'
require 'pry'

class GameTest < Minitest::Test

  def test_it_exists
    game = Game.new

    assert_instance_of Game, game
  end

  def test_game_can_create_gameboard_for_computer_player_by_default
    game = Game.new

    assert_equal "Computer", game.computer_board.board_user
  end
  #
  # def test_board_can_create_board_for_user_and_computer_in_same_game
  #   game = Game.new
  #   game.player_place_boats
  #
  #   assert_equal "Computer", game.computer_board.board_user
  #   assert_equal "Player", game.user_board.board_user
  # end


end
