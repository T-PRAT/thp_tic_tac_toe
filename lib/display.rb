class Display
	def head
		system "clear"
		puts "╔════════════════════════╗"
		puts "║   	TIC TAC TOE    	 ║"
		puts "╚════════════════════════╝"
		puts
	end

	def pseudo(nbr)
		puts "entrer le nom du joueur #{nbr} :"
		print " > "
	end

	def board(h, player_X, player_O)
		puts "  #{player_X.name}: X   #{player_O.name}: O"
		puts
		puts "         1   2   3"
    	puts "       ╔═══╦═══╦═══╗"
		puts "    a  ║ #{h["a1"]} ║ #{h["a2"]} ║ #{h["a3"]} ║"
		puts "       ╠═══╬═══╬═══╣"
		puts "    b  ║ #{h["b1"]} ║ #{h["b2"]} ║ #{h["b3"]} ║"
		puts "       ╠═══╬═══╬═══╣"
		puts "    c  ║ #{h["c1"]} ║ #{h["c2"]} ║ #{h["c3"]} ║"
		puts "       ╚═══╩═══╩═══╝"
	end

	def ask(name)
		puts
		puts "#{name}, quelle case souhaitez vous jouer ?"
		print " > "
	end
end
