class Question
  attr_accessor :first_number, :second_number

  def initialize
    @first_number = rand(1..20)
    @second_number = rand(1..20)
  end

  def ask_question
    "What does #{first_number} plus #{second_number} equal?"
  end

end
