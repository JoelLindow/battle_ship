require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/messages'

class MessagesTest < Minitest::Test

  def test_it_exists
    message = Messages.new
    assert_instance_of Messages, message
  end

  def test_it_can_access_main_menu_message
    message = Messages.new

    assert_equal "Welcome to the exciting and spine tingling strategy game",
                 message.main_menu_message[0..55]
  end

  def test_it_can_access_another_method_called_ship_placement_message
    message = Messages.new

    assert_equal "I have laid out my ships on the grid.",
                 message.ship_placement_message[0..36]
  end
end
