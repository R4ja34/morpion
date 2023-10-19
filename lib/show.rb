class Show

  def board(new_game)
    puts "\n" + "-" * 13 # Ligne horizontale pour séparer les rangées
    new_game.board.each do |row|
      print "| "
      row.each do |element|
        print element.value
        print " | " # Ajoute une barre verticale pour séparer les cases
      end
      puts "\n" + "-" * 13 # Ligne horizontale pour séparer les rangées
    end
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
  end

end
