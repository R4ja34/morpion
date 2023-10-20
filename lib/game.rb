class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :players, :current_player, :status, :board

  def initialize
    #TO DO : créé 2 joueurs,créé un board, met le status à "on going", défini un current_player
    # Créez les deux joueurs
    print "joueur 1 quel est ton nom de hero : "
    name1 = gets.chomp
    player1 = Player.new(name1, "X")
    print "joueur 2 quel est ton nom de hero : "
    name2 = gets.chomp
    player2 = Player.new(name2, "O")
    @players = [player1, player2]
    @current_player = player1
    @status = "en cours"
    @board = Board.new
  end

  def turn(show)
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    show.board(@board)
    puts "c'est au tour de #{@current_player.name}  :"
    @board.play_turn(@current_player)
    result = @board.victory?(@current_player)
    if result == "victoire"
      @status = "victoire"
    elsif result == "match nul"
      @status = "match nul"
    else
    @current_player = (@current_player == @players[0] ) ? @players[1] : @players[0]
    puts @current_player.name
    end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    puts "Voulez-vous rejouer ? (oui/non)"
    replay = gets.chomp.downcase
    if replay == "oui"
      @board = Board.new
      @status = "en cours"
    else
      puts "Merci d'avoir joué !"
      exit
    end
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    case @status
    when "victoire"
      puts "#{current_player.name} a gagné !"
      new_round
    when "match nul"
      puts "Match nul !"
      new_round
    end
  end

end

