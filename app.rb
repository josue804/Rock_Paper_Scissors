require('sinatra')
require('sinatra/reloader')
require('./lib/rps.rb')
also_reload('lib/**/*.rb')

get('/') {
  # If player 1 has chosen
  if params.has_key?('player1') && !params.has_key?('player2')
    @player1 = params.fetch('player1')
    @player = 2
  # If Player 2 has chosen, display results
  elsif params.has_key?('player2')
    @player1 = params.fetch('player1')
    @player2 = params.fetch('player2')
    @winner = @player1.rps(@player2)
  # When no one has chosen
  else
    @player = 1
  end
  erb(:index)
}
