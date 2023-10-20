require 'bundler'
Bundler.require

require_relative "lib/boardcase.rb"
require_relative "lib/board.rb"
require_relative "lib/player.rb"
require_relative "lib/show.rb"
require_relative "lib/game.rb"
require_relative "lib/application.rb"


Application.new.perform

# game = Game.new # Supposons que vous ayez créé une instance de la classe Board
# show = Show.new
# loop do
#   game.turn(show)
#   game.game_end
# end

