class GameBoard
  attr_reader :board

  def initialize
    @board = {
                  "A" => [" · ", " · ", " · ", " · "],
                  "B" => [" · ", " · ", " · ", " · "],
                  "C" => [" · ", " · ", " · ", " · "],
                  "D" => [" · ", " · ", " · ", " · "]
                    }
  end

  def full_board
    board_show = {
                  "TOP" => ["   ", " 1 ", " 2 ", " 3 ", " 4 "],
                  "A"   => ["A", board["A"][0], board["A"][1], board["A"][2], board["A"][3]],
                  "B"   => ["B", board["B"][0], board["B"][1], board["B"][2], board["B"][3]],
                  "C"   => ["C", board["C"][0], board["C"][1], board["C"][2], board["C"][3]],
                  "D"   => ["D", board["D"][0], board["D"][1], board["D"][2], board["D"][3]]
                    }
    board_show
  end

end
