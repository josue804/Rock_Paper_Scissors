require('sinatra')
require('sinatra/reloader')
require('./lib/rps.rb')
also_reload('lib/**/*.rb')

get('/') {
  if params.fetch(player1) && !params.fetch(player2)
    @player1 = params.fetch(player1)
    @player = 2
  elsif params.fetch(player2)
    @player1 = params.fetch(player1)
    @player2 = params.fetch(player2)
  else
    @player = 1
  end
  erb(:index)
}
