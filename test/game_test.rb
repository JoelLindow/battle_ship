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

  def test_user_board_starts_as_default_empty_board
    game = Game.new
    empty_board = [
                  [" . ", " . ", " . ", " . "],
                  [" . ", " . ", " . ", " . "],
                  [" . ", " . ", " . ", " . "],
                  [" . ", " . ", " . ", " . "]
                  ]

    assert_equal empty_board, game.user_board
  end

  def test_player_can_take_first_shot_against_empty_computer_board_and_miss
    game = Game.new
    hit_spot = "a2"
    game.computer_board.data[0][1] = " . "
    game.user_shot(hit_spot)

    assert_equal " M ", game.computer_board.data[0][1]
  end

  def test_player_can_take_first_shot_against_computer_boat_and_hit
    game = Game.new
    hit_spot = "a2"
    game.computer_board.data[0][1] = " B "
    game.user_shot(hit_spot)

    assert_equal " H ", game.computer_board.data[0][1]
  end



end
