class Board
  attr_accessor :board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    @board = Array.new(3){ Array.new(3)}
    @board.each.with_index do |row, i|
      row.each.with_index do |_, j|
        @board[i][j] = BoardCase.new("#{(97+i).chr}#{j+1}")
      end
    end
  end

  def play_turn(player)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    action = gets.chomp.downcase
    @board.each do |row|
    row.each do |cellule|
      if cellule.id == action && cellule.value == " "
        cellule.value = player.symbol
        end
      end
    end
  end
  
  def victory?(player)
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    win_condition = [
      [board[0][0], board[0][1], board[0][2]], # Lignes horizontales
      [board[1][0], board[1][1], board[1][2]],
      [board[2][0], board[2][1], board[2][2]],
      [board[0][0], board[1][0], board[2][0]], # Colonnes verticales
      [board[0][1], board[1][1], board[2][1]],
      [board[0][2], board[1][2], board[2][2]],
      [board[0][0], board[1][1], board[2][2]], # Diagonales
      [board[0][2], board[1][1], board[2][0]]
    ]
    win_condition.each do |condition|
      if condition.all? { |cell| cell.value == player.symbol }
        return "victoire" # Le joueur a gagné
      end
    end
  
    # Si aucune victoire, vérifiez s'il y a un match nul
    if board.flatten.all? { |cell| cell.value != ' ' }
      return "match nul"
    end
  
    # Si le jeu n'est pas terminé, renvoyez "en cours"
    return "en cours"
  end

end