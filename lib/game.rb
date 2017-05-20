require './lib/messages'
require './lib/game_board'

class Game
  attr_accessor :game_start_time, :game_board

  def initialize
    @game_board = GameBoard.new
    @game_start_time = 0
  end


  def random_placement(item)
    random_key = @game_board.board.keys.sample
    @game_board.board[random_key][rand(0..3)] = (" " + item + " ")
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
