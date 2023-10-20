class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    # 
  game = Game.new # Supposons que vous ayez créé une instance de la classe Board
  show = Show.new
  loop do
    game.turn(show)
    game.game_end
  end



  end

end


# Application.new.perform