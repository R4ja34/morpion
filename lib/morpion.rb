def input(sentence)
  puts "\n"
  print sentence + " : "
  response = gets.chomp()
  puts "\n"
  return response
end

class Board
  attr_reader :availabe_coordinates
  attr_reader :board
  def initialize
      @board = {}
      @availabe_coordinates = []

      (97..99).to_a.each {|i| @board[i.chr] = Array.new(3, " ")}
      (0..2).to_a.each {|i| (0..2).to_a.each {|j| @availabe_coordinates << (97+i).chr+(j+1).to_s}}
  end

  def show
      puts "\n"+"-"+"-"*4*@board["a"].size
      @board.each {|key, value| value.each.with_index {|v, i| print i == 0 ? "| #{v} |" : " #{v} |"}; puts "\n"+"-"+"-"*4*value.size}
  end

  def play(coordinate, sign)
      @board[coordinate.split("")[0]][coordinate.split("")[1].to_i-1] = sign
      @availabe_coordinates.delete(coordinate)
  end


end

class Player
  attr_reader :name
  attr_reader :sign
  def initialize(name, sign)
      @name = name
      @sign = sign
  end
end

class Game
  attr_reader :active_player
  def initialize
      @board = Board.new
      @player  = Player.new("haingo", "X")
      @player2 = Player.new("lala", "0")
      @active_player = @player
      @board.show
  end
  
  def change_player
      @active_player = @active_player == @player ? @player2 : @player
  end

  def play
      puts "Au tour de #{@active_player.name} de jouer"
      coor = input("Quelle case voulez vous jouer?")
      while !@board.availabe_coordinates.include? coor
          coor = input("la case a déjà été joué ou n'éxiste pas, choisisser une autre case")
      end
      @board.play(coor, @active_player.sign)
      @board.show
      puts "\n"
  end

  def winner
      @board.board.each { |key, value| if value.join("") == @active_player.sign*3 then return true end }
      
      (0..2).to_a.each {|j| col = []; (97..99).to_a.each {|i| col << @board.board[i.chr][j]}; if col.join("") == @active_player.sign*3 then return true end}
      
      # cross = Array.new(3, [])
      # # (0..2).to_a.each {|i| cross[0][i] = @board.board[(97+i).chr][i]; cross[1][i] = @board.board[(99-i).chr][3-i] }
      # (0..2).to_a.each {|i| cross[0]<< "X"}
      # # cross.each {|x| if x.join("") == @active_player.sign*3 then return true end}
      # # for i in (0..2)

      # # p @board.board[(97).chr][0]
      # p cross

      return false
  end

  def tie
      if @board.availabe_coordinates == [] then return true end
      return false
  end
end

game = Game.new

win = false

loop do
  game.play
  if game.winner
      puts "#{game.active_player.name} a gagné la partie"
      break
  end
  if game.tie
      puts "Aucun joueur n'a gangné"
      break
  end
  game.change_player
end

