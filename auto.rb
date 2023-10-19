

Dir.mkdir("/home/rajaonarisoa/Thp/projet/fullstack/semaine_4/tic_tac_toe/lib")

file = File.open("/home/rajaonarisoa/Thp/projet/fullstack/semaine_4/tic_tac_toe/Gemfile", "a")

contenu = file.puts("source 'https://rubygems.org'\nruby '3.2.2'\ngem 'pry'\ngem 'bundler'")

system("bundle install")