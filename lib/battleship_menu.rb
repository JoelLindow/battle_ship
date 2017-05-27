require './lib/game'
require './lib/messages'
require "pry"
class BattleshipMenu

  def start_menu
    puts Messages.main_menu_message
    # `say welcome to battleship`
    menu_input = gets.chomp.downcase
    handle_menu_input(menu_input)
  end

  def handle_menu_input(menu_input)
    if menu_input == ("q" || "quit")
      system "clear"
      puts Messages.quit_game_message
    elsif menu_input == ("i" || "instructions")
      system "clear"
      puts Messages.instructions_message
      pause = gets.chomp
      system "clear"
      start_menu
    elsif menu_input == ("p" || "play")
      game = Game.new
      system "clear"
      # game.game_start_time = Time.now or something like that.
      game.activate_game_play
    else
      system "clear"
      start_menu
    end
  end

end
