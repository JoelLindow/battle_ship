require './lib/messages'
require './lib/game_board'

class Game
  attr_accessor :game_start_time, :computer_board, :user_board

  def initialize
    @computer_board = GameBoard.new
    @user_board = GameBoard.new("Player")
    @game_start_time = 0
  end

  def messages
    Messages.new
  end

  def main_menu_message
    messages.main_menu_message
  end

  def quit_game_message
    messages.quit_game_message
  end

  def instructions_message
    messages.instructions_message
  end

  def start_game_message
    messages.ship_placement_message
  end


end
