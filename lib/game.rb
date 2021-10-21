class Game
	def action(symbol, index)
		@val = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3", ]
		index.downcase!
		return 2 unless @val.include?(index)
		if $h[index] == " "
			$h[index] = symbol
			return 0
		else
			return 1
		end
	end
end
