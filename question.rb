class Question
  attr_reader :question, :correct_answer

  def initialize()
    @num1 = rand(1..21) # A Random integer between 1 and 20
    @num2 = rand(1..21)
    @question = "What does #{@num1} plus #{@num2} equal?"
    @correct_answer = @num1 + @num2
  end
  
end