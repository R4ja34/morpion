class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :value, :id
  
  def initialize(id)
    @value = " "  # Par défaut, la case est vide
    @id = id
  end
end