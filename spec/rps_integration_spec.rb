require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('/', {:type => :feature}) {

  it("properly opens the index page") {
    visit('/')
    expect(page).to have_content("Rock Paper Scissors")
  }
  it("when player 1 chooses their weapon, player 2 is prompted to choose") {
    visit('/')
    click_link('rock')
    expect(page).to have_content("Player 2: Choose your weapon")
  }
}
