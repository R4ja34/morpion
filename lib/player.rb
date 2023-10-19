class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_reader :name, :symbol
  
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    #TO DO : doit régler son nom et sa valeur
  end
end
