require 'bundler'
Bundler.require

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :value, :id
  
  def initialize(id)
    @value = " "  # Par défaut, la case est vide
    @id = id
  end
end


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

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #création de du tableau 3x3
    @board = Array.new(3){ Array.new(3)}
    #creation de instances dans chaque element 
    @board.each.with_index do |row, i|
      row.each.with_index do |_, j|
        @board[i][j] = BoardCase.new("#{(97+i).chr}#{j+1}")
      end
    end
  end


  def get_board
    puts "\n" + "-" * 13 # Ligne horizontale pour séparer les rangées
    @board.each do |row|
      print "| "
      row.each do |element|
        print element.value
        print " | " # Ajoute une barre verticale pour séparer les cases
      end
      puts "\n" + "-" * 13 # Ligne horizontale pour séparer les rangées
    end
  end
end
############################################################################
#                         PAS OK
############################################################################

#   def translate_move(move)
#     moves = [
#       a1 = [0, 0],
#       a2 = [0, 1],
#       a3 = [0, 2],
#       b1 = [1, 0],
#       b2 = [1, 1],
#       b3 = [1, 2],
#       'c1' = [2, 0],
#       'c2' = [2, 1],
#       'c3' = [2, 2]
#   ]
#     moves[move]
#   end

#   def play_turn
#   #TO DO : une méthode qui :
#   #1) demande au bon joueur ce qu'il souhaite faire
#   puts "Entrez votre mouvement  : "
#   move = gets.chomp.downcase
#   #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
#   (current_player == 'X') ? 'O' : 'X'
#   end

#   def make_move(row, col)
#     if @board[row][col].nil?
#       @board[row][col] = @current_player
#       switch_player
#       return true
#     else
#       return false
#     end
#   end

#   def switch_player
#     @current_player = (@current_player == 'X') ? 'O' : 'X'
#   end

# end



