require 'minitest/autorun'
require 'minitest/pride'
require 'rake/testtask'
require_relative '../lib/battleship_menu'

class BattleshipMenuTest < Minitest::Test

  def test_it_exists
    menu = BattleshipMenu.new
    assert_instance_of BattleshipMenu, menu
  end
end
