require './lib/game'

class BattleshipMenu

  def start_menu
    game = Game.new
    puts game.main_menu_message
    menu_input = gets.chomp.downcase
    handle_menu_input(game, menu_input)
  end

  def handle_menu_input(game, menu_input)
    if menu_input == ("q" || "quit")
      system "clear"
      puts game.quit_game_message
    elsif menu_input == ("i" || "instructions")
      system "clear"
      puts game.instructions_message
      pause = gets.chomp
      system "clear"
      start_menu
    elsif menu_input == ("p" || "play")
      system "clear"
      game.game_start_time = Time.now
      puts game.start_game_message
      game.active_game_play
    else
      system "clear"
      start_menu
    end
  end

end
