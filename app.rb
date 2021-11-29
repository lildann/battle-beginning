require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    p params
    redirect('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/attack' do
    redirect('/attack')
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    @game.switch_turns
    erb(:attack)
  end

  run! if app_file == $0
end