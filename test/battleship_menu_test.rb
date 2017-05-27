require 'minitest/autorun'
require 'minitest/pride'
require 'rake/testtask'
require_relative '../lib/battleship_menu'

class BattleshipMenuTest < Minitest::Test

  def test_it_exists
    menu = BattleshipMenu.new
    assert_instance_of BattleshipMenu, menu
  end

# BOTH TESTS BELOW NOW NEED MODIFIED TO MOVE FORWARD INTELLIGENTLY.
# Menu returns access to game functionality, and not must message returns.
# Find a way to make these tests represent the launch of next step of code

  # def test_it_accepts_quit_option_for_menu_input
  #   menu = BattleshipMenu.new
  #   quit = Messages.quit_game_message
  #   assert_equal quit, menu.handle_menu_input("q")
  # end

  # def test_it_accepts_instruction_option_for_menu_input
  #   menu = BattleshipMenu.new
  #   quit = Messages.instructions_message
  #   assert_equal quit, menu.handle_menu_input("i")
  # end
end
