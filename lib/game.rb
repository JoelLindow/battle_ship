require './lib/messages'

class Game
  attr_accessor :game_start_time

  def intitialize
    @game_start_time = 0
  end


  # def place_ships
  #
  # end

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
