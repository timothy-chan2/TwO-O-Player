class Game
  attr_reader :current_player, :right_answer, :wrong_answer, :end_of_turn, :end_of_game

  def initialize()
    @current_player = "Player 1"
    @right_answer = "You are correct!"
    @wrong_answer = "Your answer is incorrect!"
    @end_of_turn = "----- NEW TURN -----"
    @end_of_game = "----- GAME OVER ----- \nGood bye!"
  end

  def next_player
    if @current_player == "Player 1"
      @current_player = "Player 2"
    else
      @current_player = "Player 1"
    end
  end
  
end