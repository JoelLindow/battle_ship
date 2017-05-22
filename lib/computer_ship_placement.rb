require 'pry'
class ComputerShipPlacement
  attr_reader :computer_board

  def initialize
    @computer_board = [
                        [" . ", " . ", " . ", " . "],
                        [" . ", " . ", " . ", " . "],
                        [" . ", " . ", " . ", " . "],
                        [" . ", " . ", " . ", " . "]
                      ]
  end
  # def self.ship_start_point(computer_board)
  #   computer_board.data[rand(0..3)][rand(0..3)] = " B "
  # end
  def place_boats
    boat_lengths = [2, 3]
    until boat_lengths.empty?
      if boat_direction == 0
        horizontal_boat(boat_lengths[0])
      else
        vertical_boat(boat_lengths[0])
      end
      boat_lengths.shift!
    end
  end

  def horizontal_boat(boat_length)
    puts "horizontal_boat"
  end

  def vertical_boat(boat_length)
    puts "vertical_boat"
  end

  def boat_direction
    rand(0..1)
  end

  def two_boat_start_index
    rand(0..2)
  end

  def three_boat_start_index
    rand(0..1)
  end

  def populated_computer_board #<--- game board calls this for computer game board
    place_boats
    computer_board
  end

  def empty_game_board
    [
      [" . ", " . ", " . ", " . "],
      [" . ", " . ", " . ", " . "],
      [" . ", " . ", " . ", " . "],
      [" . ", " . ", " . ", " . "]
    ]
  end

  def board_reference_horizontal
    [
      [[0, 0], [0, 1], [0, 2], [0, 3]],
      [[1, 0], [1, 1], [1, 2], [1, 3]],
      [[2, 0], [2, 1], [2, 2], [2, 3]],
      [[3, 0], [3, 1], [3, 2], [3, 3]]
    ]

  end

  def board_reference_vertical
    [
      [[3, 0], [2, 0], [1, 0], [0, 0]],
      [[3, 1], [2, 1], [1, 1], [0, 1]],
      [[3, 2], [2, 2], [1, 2], [0, 2]],
      [[3, 3], [2, 3], [1, 3], [0, 3]]
    ]
  end

end

binding.pry
""
