class Messages

  def main_menu_message
    "Welcome to the exciting and spine tingling strategy game
    █████   ████  ██████ ██████ ██    █████  ████  ██  ██ ██████ █████
    ██  ██ ██  ██   ██     ██   ██    ██    ██     ██  ██   ██   ██  ██
    █████  ██████   ██     ██   ██    ████    ██   ██████   ██   █████
    ██  ██ ██  ██   ██     ██   ██    ██        ██ ██  ██   ██   ██
    █████  ██  ██   ██     ██   █████ █████  ████  ██  ██ ██████ ██
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def self.ship_placement_message
"I have laid out my ships on the grid.          GAME GRID
You now need to layout your two ships..        =========
                                               .  1  2  3  4
The first is two units long and the            A  .  .  .  .
second is three units long.                    B  .  .  .  .
                                               C  .  .  .  .
The grid has A1 at the top left and            D  .  .  .  .
D4 at the bottom right.                        =========

Let's start placing your ships! Would you like
to place a (h)orizontal boat or a (v)ertical boat?"
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

  def self.first_user_boat_position_prompt_horizontal_one
    "Pick Start Position for your first boat. This boat will be 2 spots in width.

Valid Placement:
If you pick the position A1 you will place a boat on A1 and A2.
If you pick the position C3 you will place a boat on C3 and C4.

Invalid Placement:
You can not Place a Boat starting at a position which will hang the boat
off of the game board. For example, if you start your boat at the position
A4, you would be hanging your boat off of the board. Becasue A5 does not exist
this would be considered an invalid placement, and you will be asked to start over.

Where would you like to start your 2 spot wide boat?"
  end

  def self.invalid_boat_placement_message
    "!!!!! Invalid boat placement. Please try again. !!!!!"
  end
end
