class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    # Rules of play
  end
end

bingo = Bingo.new
puts bingo.play