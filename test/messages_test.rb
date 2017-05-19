require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/messages'
require 'pry'

class MessagesTest < Minitest::Test

  def test_it_exists
    message = Messages.new
    assert_instance_of Messages, message
  end

  def test_main_menu_message
    message = Messages.new

    assert_equal "Welcome to the exciting and beloved game of",
                 message.main_menu[0..42]
  end

  def test_ship_placement_message
    message = Messages.new

    assert_equal "I have laid out my ships on the grid.          GAME GRID",
                 message.ship_placement[0..55]
  end
end
