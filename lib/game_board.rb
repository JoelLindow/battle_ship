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

  def board_see
    board_show = {
                  "A" => [" · ", " · ", " · ", " · "],
                  "B" => [" · ", " · ", " · ", " · "],
                  "C" => [" · ", " · ", " · ", " · "],
                  "D" => [" · ", " · ", " · ", " · "]
                    }
  end

end
