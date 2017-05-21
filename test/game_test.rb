require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require 'pry'

class GameTest < Minitest::Test

  def test_it_exists
    game = Game.new

    assert_instance_of Game, game
  end

  def test_it_can_access_REPL_messages_through_game_class
    game = Game.new
    message = Messages.new

    assert_equal message.main_menu_message, game.main_menu_message
    assert_equal message.quit_game_message, game.quit_game_message
  end

  def test_game_can_create_gameboard_for_computer_player_by_default
    game = Game.new

    assert_equal "Computer", game.computer_board.board_user
  end

  def test_board_can_create_board_for_user_and_computer_in_same_game
    game = Game.new

    assert_equal "Computer", game.computer_board.board_user
    assert_equal "Player", game.user_board.board_user
  end


end
