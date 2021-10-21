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

	def init(h, p1, p2)
		@h = h
		@p1 = p1
		@p2 = p2
	end

	def board
		puts "  #{@p1.name}: X   #{@p2.name}: O"
		puts
		puts "         1   2   3"
    	puts "       ╔═══╦═══╦═══╗"
		puts "    a  ║ #{@h["a1"]} ║ #{@h["a2"]} ║ #{@h["a3"]} ║"
		puts "       ╠═══╬═══╬═══╣"
		puts "    b  ║ #{@h["b1"]} ║ #{@h["b2"]} ║ #{@h["b3"]} ║"
		puts "       ╠═══╬═══╬═══╣"
		puts "    c  ║ #{@h["c1"]} ║ #{@h["c2"]} ║ #{@h["c3"]} ║"
		puts "       ╚═══╩═══╩═══╝"
		puts
	end

	def ask(name)
		puts "#{name}, quelle case souhaitez vous jouer ?"
		print " > "
	end

	def err1(name)
		head
		board
		puts "La case est déja prise :("
		ask(name)
	end

	def err2(name)
		head
		board
		puts "Cette case n'existe pas :("
		ask(name)
	end
end
