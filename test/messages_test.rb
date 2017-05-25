require 'minitest/autorun'
require 'minitest/pride'
require 'rake/testtask'
require_relative '../lib/messages'

class MessagesTest < Minitest::Test

  def test_it_exists
    message = Messages.new
    assert_instance_of Messages, message
  end

  def test_it_can_access_main_menu_message
    assert_equal "Welcome to the exciting and spine tingling strategy game",
                 Messages.main_menu_message[0..55]
  end

  def test_it_can_access_another_method_called_ship_placement_message
    assert_equal "I have laid out my ships on the grid.",
                 Messages.ship_placement_message[0..36]
  end

  def test_it_can_return_boat_one_placement_message
    assert Messages.ship_placement_message
  end

  def test_it_can_return_boat_one_second_placement_message
    assert Messages.ship_placement_message_two
  end

  def test_it_can_return_horizontal_first_placement_message
    assert Messages.first_user_boat_position_prompt_horizontal_message
  end

  def test_it_can_return_first_boat_vertical_placement_message
    assert Messages.first_user_boat_position_prompt_vertical_message
  end

  def test_it_can_return_secont_user_boat_horizontal_first_placement_message
    assert Messages.second_user_boat_position_prompt_horizontal_message
  end

  def test_it_can_return_second_user_boat_vertical_first_placement_message
    assert Messages.second_user_boat_position_prompt_vertical_message
  end

  def test_it_can_return_invalid_boat_placement_error_message_for_boat_placement
    assert Messages.invalid_boat_placement_message
  end

  def test_it_can_return_first_boat_placed_message
    assert Messages.first_boat_placed_message
  end

  def test_it_can_return_second_boat_placed_message
    assert Messages.second_boat_placed_message
  end

end
