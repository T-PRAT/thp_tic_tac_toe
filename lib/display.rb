class Display
	def head
		system "clear"
		puts "╔════════════════════════╗"
		puts "║   	" + "TIC TAC TOE".blue + "    	 ║"
		puts "╚════════════════════════╝"
		puts
	end

	def pseudo(nbr)
		puts "Entrer le nom du joueur #{nbr} :"
		print " > "
	end

	def init(p1, p2)
		@p1 = p1
		@p2 = p2
	end

	def board
		puts "  #{@p1.name}: #{"X".bold}   #{@p2.name}: #{"O".bold}"
		puts
		puts "         #{"1".yellow}   #{"2".yellow}   #{"3".yellow}"
    	puts "       ╔═══╦═══╦═══╗"
		puts "    #{"a".yellow}  ║ #{$h["a1"]} ║ #{$h["a2"]} ║ #{$h["a3"]} ║"
		puts "       ╠═══╬═══╬═══╣"
		puts "    #{"b".yellow}  ║ #{$h["b1"]} ║ #{$h["b2"]} ║ #{$h["b3"]} ║"
		puts "       ╠═══╬═══╬═══╣"
		puts "    #{"c".yellow}  ║ #{$h["c1"]} ║ #{$h["c2"]} ║ #{$h["c3"]} ║"
		puts "       ╚═══╩═══╩═══╝"
		puts
	end

	def ask(name)
		puts "#{name}, quelle case souhaitez vous jouer ?"
		print " > ".blue
	end

	def err1(name)
		head
		board
		puts "La case est déja prise :(".red
		ask(name)
	end

	def err2(name)
		head
		board
		puts "Cette case n'existe pas :(".red
		ask(name)
	end

	def win(name)
		head
		board
		puts "Bravo #{name}, tu a gagné !!!".green
	end

	def draw
		head
		board
		puts "Plus de place dans le plateau, égalité !".yellow
	end
end
