require 'bundler'
Bundler.require

require_relative "lib/boardcase.rb"
require_relative "lib/board.rb"
require_relative "lib/player.rb"
require_relative "lib/show.rb"
require_relative "lib/game.rb"
require_relative "lib/application.rb"


game = Game.new # Supposons que vous ayez créé une instance de la classe Board
show = Show.new
loop do
  # show.board(game.board)
  # puts "c'est au tour de #{game.current_player.name}  :"
  # move = gets.chomp.downcase
  # game.board.board.each do |row|
  #   row.each do |element|
  #     if element.id == move
  #       element.value = game.current_player.value  
  #       game.current_player = (game.current_player == game.players[0] ) ? game.players[1] : game.players[0]
  #       puts game.current_player.name
  #     end
  #   end
  # end
  game.turn(show)
end
system("clear")
