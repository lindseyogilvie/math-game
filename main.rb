require "./game.rb"
require "./player.rb"
require "./question.rb"
require "./turn.rb"


player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

game1 = Game.new(player1, player2, player1)
game1.game