require('rspec')
require('rps')

describe('String#rps') do
  it("returns a win if player 1 wins") do
    expect(("rock").rps("scissors")).to(eq("Player 1 Wins"))
  end
end
