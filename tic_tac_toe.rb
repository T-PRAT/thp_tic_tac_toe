require 'bundler'
Bundler.require

require_relative 'lib/display'
require_relative 'lib/player'
require_relative 'lib/game'

$h = {"a1" => " ", "a2" => " ", "a3" => " ",
	"b1" => " ", "b2" => " ", "b3" => " ",
	"c1" => " ", "c2" => " ", "c3" => " "}

display = Display.new
display.head
display.pseudo("1")
player1 = Player.new(gets.chomp, "X")
display.pseudo("2")
player2 = Player.new(gets.chomp, "O")
display.init(player1, player2)
game = Game.new
player = player1
while (true)
	display.head
	display.board

	display.ask(player.name)
	while (ret = game.action(player.symbol, gets.chomp)) != 0
		puts ret
		case ret
			when 1
				display.err1(player.name)
			when 2
				display.err2(player.name)
		end
	end
	if (res = game.end(player.symbol)) != 0
		if res == 1
			display.win(player.name)
		else
			display.draw
		end
		break
	end
	player == player1 ? player = player2 : player = player1
end

