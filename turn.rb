require "./question.rb"
require "./player.rb"

class Turn
  attr_accessor :player, :question, :outcome

  def initialize(player, question)
    @player = player
    @question = question
    @outcome = "incorrect"
  end 

  def validate_answer
    correct_answer = (@question.first_number + @question.second_number).to_s
    
    player_answer = gets.chomp

    if (player_answer == correct_answer)
      puts "#{player.name}: YES! You are correct!"
      @outcome = "correct"
    else
      puts "#{player.name}: Seriously? No!"
    end
  end 

  def turn
    puts "#{player.name}: #{question.ask_question}"

    validate_answer

    if @outcome == "incorrect"
      player.lives -=1
    end
  end

end

# question1 = Question.new
# player1 = Player.new("Player 1")
# player2 = Player.new("Jacob")

# turn1 = Turn.new(player1, question1 )

# turn1.turn