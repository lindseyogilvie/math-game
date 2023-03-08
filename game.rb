class Game
  attr_accessor :player1, :player2, :current_player

  def initialize(player1, player2, current_player)
    @player1 = player1
    @player2 = player2
    @current_player = current_player
  end

  def alternate_players
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def game
    while (player1.lives > 0 && player2.lives > 0) do 
        puts "----- NEW TURN -----"
        Turn.new(current_player, Question.new).turn
        puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
        alternate_players
    end
    if (player1.lives == 0)
      puts "Player 2 wins with a score of #{player2.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
    if (player2.lives == 0)
      puts "Player 1 wins with a score of #{player1.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
  end

end

