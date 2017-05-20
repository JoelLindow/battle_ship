class Messages

  def ship_placement_message
"I have laid out my ships on the grid.          GAME GRID
You now need to layout your two ships..        =========
                                               . 1 2 3 4
The first is two units long and the            A . . . .
second is three units long.                    B . . . .
                                               C . . . .
The grid has A1 at the top left and            D . . . .
D4 at the bottom right.                        =========

Enter the squares for the two-unit ship:"
  end
#
  def main_menu_message
    "Welcome to the exciting and spine tingling strategy game
█████   ████  ██████ ██████ ██    █████  ████  ██  ██ ██████ █████
██  ██ ██  ██   ██     ██   ██    ██    ██     ██  ██   ██   ██  ██
█████  ██████   ██     ██   ██    ████    ██   ██████   ██   █████
██  ██ ██  ██   ██     ██   ██    ██        ██ ██  ██   ██   ██
█████  ██  ██   ██     ██   █████ █████  ████  ██  ██ ██████ ██
Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions_message
    "Instructions
Instructions
Instructions
Instructions
---Press Enter Key to Continue ---"

  end

  def quit_game_message
    "Goodbye! Battleship will miss you!"
  end

end
