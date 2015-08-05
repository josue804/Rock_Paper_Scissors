class String
  def rps (player2)
    to_win = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}
    if to_win.fetch(self) == player2
      "Player 1 Wins"
    elsif to_win.fetch(player2) == self
      "Player 2 Wins"
    else
      "It's a Tie"
    end
  end
end
