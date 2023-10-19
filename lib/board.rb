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
    row.each do |element|
      if element.id == action
        element.value = player.symbol
        end
      end
    end
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end


end