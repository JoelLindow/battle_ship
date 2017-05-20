require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/battleship_menu'
require './lib/messages'

class BattleshipMenuTest < Minitest::Test

  def test_it_exists
    menu = BattleshipMenu.new
    assert_instance_of BattleshipMenu, menu
  end



end
