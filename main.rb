# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require './player'
require './question'
require './game'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

game1 = Game.new

while player1.lives > 0 && player2.lives > 0  do
  player = game1.current_player
  question = Question.new
  puts "#{player}: #{question.question}"
  answer = gets.chomp.to_i # user input from the terminal

  if answer == question.correct_answer
    puts "#{player}: #{game1.right_answer}"
  else
    puts "#{player}: #{game1.wrong_answer}"
    if player == "Player 1"
      player1.answered_wrong
    else
      player2.answered_wrong
    end
  end

  if player1.lives == 0
    puts "Player 2 wins with a score of #{player2.lives}/3\n#{game1.end_of_game}"
  elsif player2.lives == 0
    puts "Player 1 wins with a score of #{player1.lives}/3\n#{game1.end_of_game}"
  else
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3\n#{game1.end_of_turn}"
    game1.next_player
  end
end

