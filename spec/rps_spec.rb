require('rspec')
require('rps')

describe('String#rps') {

  it("returns a win if player 1 wins") {
    expect("rock".rps("scissors")).to(eq("Player 1 Wins"))
  }

  it("returns a win for player 2 if player 2 wins") {
    expect("rock".rps("paper")).to(eq("Player 2 Wins"))
  }
  
}
