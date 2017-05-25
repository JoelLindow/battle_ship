class Messages

  def self.main_menu_message
    "Welcome to the exciting and spine tingling strategy game
    █████   ████  ██████ ██████ ██    █████  ████  ██  ██ ██████ █████
    ██  ██ ██  ██   ██     ██   ██    ██    ██     ██  ██   ██   ██  ██
    █████  ██████   ██     ██   ██    ████    ██   ██████   ██   █████
    ██  ██ ██  ██   ██     ██   ██    ██        ██ ██  ██   ██   ██
    █████  ██  ██   ██     ██   █████ █████  ████  ██  ██ ██████ ██
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def self.ship_placement_message
"I have laid out my ships on the grid.         G A M E   G R I D
You now need to layout your two ships.
                                                    1  2  3  4
The first boat is two units long and the         A  .  .  .  .
second boat is three units long.                 B  .  .  .  .
                                                 C  .  .  .  .
The grid has A1 at the top left and              D  .  .  .  .
D4 at the bottom right. The dots (.) are
spaces for you place your boats.

Let's start placing your ships! Would you like
to place a (h)orizontal boat or a (v)ertical boat?"
  end

  def self.ship_placement_message_two
    "Now it's time to place your second ship! This ship will be 3 spots in length.
Would you like to place a (h)orizontal boar or a (v)ertical boat?"
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

  def self.first_user_boat_position_prompt_horizontal_message
    "Pick Start Position for your first boat. This boat will be 2 spots in width.

<< Valid Placement: >>
If you pick the position A1 you will place a boat on A1 and A2.
If you pick the position C3 you will place a boat on C3 and C4.

<< Invalid Placement: >>
You can not Place a Boat starting at a position which will hang the boat
off of the game board. For example, if you start your boat at the position
A4, you would be hanging your boat off of the board. Becasue A5 does not exist
this would be considered an invalid placement, and you will be asked to start over.
Also, you must make sure your boat placement does not overlap the first boat you placed.

****   Where would you like to start your 2 spot wide boat?   **
****     ENTER YOUR DESIRED BOARD COORDINATE NOW, PLEASE.     ** "
  end

  def self.first_user_boat_position_prompt_vertical_message
    "Pick Start Position for your first boat. This boat will be 2 spots in height.

<< Valid Placement: >>
If you pick the position A1 you will place a boat on A1 and B1.
If you pick the position C3 you will place a boat on C3 and D4.

<< Invalid Placement: >>
You can not Place a Boat starting at a position which will hang the boat
off of the game board. For example, if you start your boat at the position
D4, you would be hanging your boat off of the board. Becasue E4 does not exist
this would be considered an invalid placement, and you will be asked to start over.
Also, you must make sure your boat placement does not overlap the first boat you placed.

****   Where would you like to start your 2 spot tall boat?   **
****     ENTER YOUR DESIRED BOARD COORDINATE NOW, PLEASE.     ** "
  end

  def self.second_user_boat_position_prompt_horizontal_message
    "Pick Start Position for your second boat. This boat will be 3 spots in width.

<< Valid Placement: >>
If you pick the position A1 you will place a boat on A1, A2 and A3.
If you pick the position C2 you will place a boat on C2, C3 and C4.

<< Invalid Placement: >>
You can not Place a Boat starting at a position which will hang the boat
off of the game board. For example, if you start your boat at the position
A4, you would be hanging your boat off of the board. Becasue A5 and A6 do not exist
this would be considered an invalid placement, and you will be asked to start over.
Another invalid placement would be C3 because C3 and C4 exist but C5 does not!

****   Where would you like to start your 3 spot wide boat?   **
****     ENTER YOUR DESIRED BOARD COORDINATE NOW, PLEASE.     ** "
  end

  def self.second_user_boat_position_prompt_vertical_message
    "Pick Start Position for your second boat. This boat will be 3 spots in height.

<< Valid Placement: >>
If you pick the position A1 you will place a boat on A1, B1 and C1.
If you pick the position B2 you will place a boat on B2, C2 and D2.

<< Invalid Placement: >>
You can not Place a Boat starting at a position which will hang the boat
off of the game board. For example, if you start your boat at the position
A4, you would be hanging your boat off of the board. Becasue E4 and E5 do not exist
this would be considered an invalid placement, and you will be asked to start over.
Another invalid placement would be C3 because C3 and D3 exist but E3 does not!

****   Where would you like to start your 3 spot tall boat?   **
****     ENTER YOUR DESIRED BOARD COORDINATE NOW, PLEASE.     ** "
  end

  def self.invalid_boat_placement_message
    "!!!!! Invalid boat placement. Please try again. !!!!!"
  end

  def self.first_boat_placed_message
    "Your first boat has been placed on the board. Get ready to place your second boat!"
  end

  def self.second_boat_placed_message
    "Your second boat has been placed on the board. Get ready to play Battleship!"
  end
end
