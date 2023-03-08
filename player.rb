class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

end

player1 = Player.new("Player 1")
player2 = Player.new("Jacob")