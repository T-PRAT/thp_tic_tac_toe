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

	def end(symbol)
		c = 0
		$h.each do |k, v|
		 	c += 1 if v == "X" || v == "O"
		end
		if c > 3
			return 1 if win?($h.select {|k, v| v == symbol}.keys)
		end
		c == 9 ? 2 : 0
	end

	def win?(keys)
		if (keys.include?("a1") && keys.include?("a2") && keys.include?("a3")) ||
		(keys.include?("b1") && keys.include?("b2") && keys.include?("b3")) ||
		(keys.include?("c1") && keys.include?("c2") && keys.include?("c3")) ||
		(keys.include?("a1") && keys.include?("b1") && keys.include?("c1")) ||
		(keys.include?("a2") && keys.include?("b2") && keys.include?("c2")) ||
		(keys.include?("a3") && keys.include?("b3") && keys.include?("c3")) ||
		(keys.include?("a1") && keys.include?("b2") && keys.include?("c3")) ||
		(keys.include?("a3") && keys.include?("b2") && keys.include?("c1"))
			return true
		else
			false
		end
	end
end
