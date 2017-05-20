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

  def test_it_can_place_ships_for_computer

  end

  def test_it_can_randomly_place_an_element
    game = Game.new
    game.random_placement("X")

    assert_equal " X ", game.random_placement("X")
    refute_equal " Y", game.random_placement("X")

    check = game.game_board.board.values.flatten

    assert check.include?(" X ")
  end



end
